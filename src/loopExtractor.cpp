#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"

#include "llvm/IR/Value.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"

#include "llvm/Support/Casting.h"
#include "llvm/IR/Operator.h"

#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Operator.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/DataLayout.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/DependenceAnalysis.h"

#include "loopExtractor.hpp"

#include <set>
#include <string>
#include <vector>

using namespace std;
using namespace llvm;

namespace loop_extractor {

void DependenceCheckFunctionIntern(Function &F, DependenceInfo &DI,
 vector<Instruction*> loopInsts);
void DependenceCheckFunctionExtern(Function &F, DependenceInfo &DI,
 vector<Instruction*> loopInsts);

unsigned isInputDep, isOutputDep, isFlowDep,
		 isAntiDep, simpleLoop, complexLoop,
		 loopMemAccess, loopArrayRW, loopRAW,
		 loopWAR, loopWAW, loopRAR,
		 indepLoopDep, loopSelfDep, loopWithWR,
		 loopWRarray, numOfLoops, loopWRarrayDisj,
		 loopWRarraySame;

std::vector<int> tracking;

/* Loops with disjoint set of array reads/write: 
	- Deve ser analisado no MESMO loop, se es possui
	  r/w a arrays disjuntos
	Loops with array read/writes to same array:
	-
*/
void RecursiveIterLoopFramework(Function &F, DependenceInfo &DI,
	Loop *L, vector<Instruction*> defUseOfArrays, unsigned nesting) {
	unsigned loopWithWRLocal = 0, loopWRarrayLocal = 0;
	set<Instruction*> disjointStore;
	set<Instruction*> disjointLoad;
	vector<Instruction*> loopInsts;
	++numOfLoops;
	Loop::block_iterator bb;
	unsigned arrSize = defUseOfArrays.size();
	/* Iterando sob os blocos básicos e instruções
	   de cada loop. A análise se inicia pelo loop mais
	   exterior e procede para Loops Internos. Um loop 
	   exterior pode possuir ou não loop alinhados. 
	*/
	for (bb = L->block_begin(); bb != L->block_end();++bb) {
		BasicBlock* block = *bb;
		for (BasicBlock::iterator BI = block->begin(), 
			BE = block->end(); BI != BE; BI++) {
			loopInsts.push_back(&*BI);

			if(auto* LI = dyn_cast<LoadInst>(BI)) {
				++loopWithWRLocal;
			} 
			else if(auto* LS = dyn_cast<StoreInst>(BI)) {
				++loopWithWRLocal;
			}
			/* O uso desta técnica com o vetor defUseOfArrays é
			   equivalentes a verificar as instruções dentro 
			   dos blocos básicos, pois defUseOfArrays já contem
			   todas as instruções Load/Store (contendo instruções)
			   que não são contempladas em Loops, ou seja, defUseOfArrays
			   já possui tudo que seria posteriormente analisado aqui.
			*/
			if (auto* SI = dyn_cast<StoreInst>(BI)) {
				for (int i = 0; i<arrSize; i++) {
					if (defUseOfArrays[i]==SI) {
						disjointStore.insert(SI);
						++loopWRarrayLocal;
					}
				}
			}
			if (auto* LI = dyn_cast<LoadInst>(BI)) {
				for (int i = 0; i<arrSize; i++) {
					if (defUseOfArrays[i]==LI) {
						disjointLoad.insert(LI);
						++loopWRarrayLocal;
					}
				}
			}
		}
	}

	/* Não contempla 1 load ^ 1 store (??) */
	if ((disjointStore.size()>1) || 
		(disjointLoad.size()>1)) {
		++loopWRarrayDisj;
	}
	disjointLoad.clear();
	disjointStore.clear();

	if (loopWithWRLocal != 0) {
		++loopWithWR;
	}
	if (loopWRarrayLocal != 0) {
		++loopWRarray;
	}
	/* loopInsts salva todas as instruções do loop analisado
	   no momento para este ser utilizado na análise de dependência.
	   Como a função RecursiveIterLoopFramework, o vetor é limpo
	   apos o retorno da função DependenceCheckFunctionIntern
	*/
	DependenceCheckFunctionIntern(F, DI, loopInsts);
	loopInsts.clear();
	vector<Loop*> subLoops = L->getSubLoops();
	Loop::iterator j, f;
	for (j = subLoops.begin(), f = subLoops.end(); j != f; ++j) {
		RecursiveIterLoopFramework(F, DI, *j, defUseOfArrays,nesting + 1);
	}
	/* Armazenando níveis */
	tracking.push_back(nesting);
}

/*
????????????????????
depends ????????????
*/

void DependenceCheckFunctionIntern(Function &F, DependenceInfo &DI, 
	vector<Instruction*> loopInsts) {
	unsigned indepLoopTemp = 0, isInputTemp = 0, 
			 isOutputTemp = 0, isFlowTemp = 0,
			 isAntiTemp = 0, loopSelfTemp = 0;
	unsigned vecSize = loopInsts.size();

	for (int I = 0; I < vecSize; I++) {
		for (int J = I; J != vecSize; J++) {
			unique_ptr<Dependence> infoPtr;
			infoPtr = DI.depends(loopInsts[I], loopInsts[J], true);
			Dependence *dep = infoPtr.get();

			if (dep != NULL) {
				Instruction* srcInt = dep->getSrc();
				Instruction* dstInt = dep->getDst();

				if (srcInt == dstInt) {
          			//dep->getDst()->print(errs(), false);
          			//errs() << "   ---> ";
          			//dep->getSrc()->print(errs(), false);
          			//errs() << "\n";
					++loopSelfTemp;
				}
			}
			// isInput(RAR): read/read
			if (dep != NULL && dep->isInput()) {
				if (dep->isLoopIndependent()) {
					++indepLoopTemp ;
				}
				++isInputTemp;
			}
			// isOutput(WAW): write/write
			if (dep != NULL && dep->isOutput()) {
				if (dep->isLoopIndependent()) {
					++indepLoopTemp;   
				}
				++isOutputTemp;
			}
			// isFlow(RAW): write/read
			if (dep != NULL && dep->isFlow()) {
				if (dep->isLoopIndependent()) {
					++indepLoopTemp;
				}
				++isFlowTemp;
			}
			// isAnti(WAR): read/write
			if (dep != NULL && dep->isAnti()) {
				if (dep->isLoopIndependent()) {
					++indepLoopTemp;
				}
				++isAntiTemp;
			}
		}
	}	
	if (loopSelfTemp != 0) ++loopSelfDep;
	if (indepLoopTemp != 0) ++indepLoopDep;
	if (isInputTemp != 0) ++loopRAR;
	if (isOutputTemp != 0) ++loopWAW;
	if (isFlowTemp != 0) ++loopRAW;
	if (isAntiTemp != 0) ++loopWAR;
}

/* Esta função só é chamada no loop mais exterior, não havendo
   a necessidade de contar novamente para loops interos, pois
   toda a informação de loops internos já é presente no loop 
   exterior.
*/
void DependenceCheckFunctionExtern(Function &F, DependenceInfo &DI,
	vector<Instruction*> loopInsts) {

	unsigned vecSize = loopInsts.size();
	for (int I = 0; I < vecSize; I++) {
		for (int J = I; J != vecSize; J++) {
			unique_ptr<Dependence> infoPtr;
			infoPtr = DI.depends(loopInsts[I], loopInsts[J], true);

			Dependence *dep = infoPtr.get();
			if (dep != NULL && dep->isInput()) {
				++isInputDep;
			}
			if (dep != NULL && dep->isOutput()) {
				++isOutputDep;
			}
			if (dep != NULL && dep->isFlow()) {
				++isFlowDep;
			}
			if (dep != NULL && dep->isAnti()) {
				++isAntiDep;
			}
		}
	}
}

LoopExtractor::LoopExtractor(Function &F, DependenceInfo &DI, LoopInfo &LI) {

	isInputDep = 0, isOutputDep = 0, isFlowDep = 0,
	isAntiDep = 0, simpleLoop = 0, complexLoop = 0,
	loopMemAccess = 0, loopArrayRW = 0, loopRAW = 0,
	loopWAR = 0, loopWAW = 0, loopRAR = 0,
	indepLoopDep = 0, loopSelfDep= 0, loopWithWR = 0,
	loopWRarray = 0, numOfLoops = 0, loopWRarrayDisj = 0,
	loopWRarraySame = 0;

	StringRef fname = F.getName();

	/* loopInsts: Vetor que possui apenas as intruções do Loop
	   functionInsts: Vetor que possui todas as instruções da função
	   defUseOfArrays: Vetor que possui apenas Store/Loads de Arrays
	   diffInsts: Vetor que possui instruções que não pertencem a
	     um Loop mais exterior (analisado no for(LoopInfo..))
	*/

	vector<int> numOfLevels;
	vector<Instruction*> loopInsts;
	vector<Instruction*> functionInsts;
	vector<Instruction*> defUseOfArrays;
	vector<Instruction*> diffInsts;

	/* Este método funciona da seguinte forma:
	1) Faço uma varredura das instruções;
	2) Econtro instruções GEP;
		2.1) Se GEP é um Array: Salvo
		2.2) Se não, descarto;
	3) Faço uma cadeia def/use com o Gep salvo;
	4) Salvo em um vetor, todas os usos (use) que são
       Stores/Loads (write/read) de Gep salvo (def)
    ------------------------------------------------
    No algoritmo recursivo de Loop, se as Instruções, 
    pertencentes ao loop analisado forem uma das salvas
    no vetor, então, aquele é um loop com R/W em Arrays.
	*/
	for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; I++) {
		if(auto *GEP = dyn_cast<GetElementPtrInst>(&*I)) {
			Type *T = cast<PointerType>(cast<GetElementPtrInst>(GEP)
				->getPointerOperandType())->getElementType();
        	if(isa<ArrayType>(T)) {
        		Instruction* instt = &*I;
        		for (User *U : instt->users()) {
        			if (Instruction *Inst = dyn_cast<Instruction>(U)) {
        				if (auto* LIC = dyn_cast<LoadInst>(Inst)) {
        					defUseOfArrays.push_back(LIC);
        				}
        				if (auto* SIC = dyn_cast<StoreInst>(Inst)) {
        					defUseOfArrays.push_back(SIC);
        				}
        			}
        		}
        	}
        }
		functionInsts.push_back(&*I);
	}

	for (LoopInfo::iterator i = LI.begin(), e = LI.end(); i != e; ++i) {
        Loop *L = *i;
		Loop::block_iterator bb;
		/* Computando loopInsts */
		for (bb = L->block_begin(); bb != L->block_end();++bb) {
			BasicBlock* block = *bb;
			for (BasicBlock::iterator BI = block->begin(), 
				BE = block->end(); BI != BE; BI++) {
				loopInsts.push_back(&*BI);
			}
		}
		/* Computando diffInsts */
  		std::set_difference(functionInsts.begin(), functionInsts.end(), 
  			loopInsts.begin(), loopInsts.end(), std::inserter(diffInsts, diffInsts.begin()));

  		/* Computando Dependencias (Intern/Extern) */
		DependenceCheckFunctionExtern(F, DI, loopInsts);
        RecursiveIterLoopFramework(F, DI, *i, defUseOfArrays,0);

        /* SimpleLoop e ComplexLoop só são unicamente para o loop EXTERIOR !*/
		std::sort(std::begin(tracking), std::end(tracking));
		auto pos = std::adjacent_find(std::begin(tracking), std::end(tracking));
		if ( pos != std::end(tracking)) {
			++complexLoop;
		}
		else {
			++simpleLoop;
		}

		/* Limpando o nível e instruções do Loop Exterior */
		tracking.clear();
		loopInsts.clear();
	}

	defUseOfArrays.clear();

	this->features[fname] = {
		{"f01_loopWithWR", loopWithWR},
		{"f02_loopWRarray", loopWRarray},
		{"f03_loopWRarrayDisj", loopWRarrayDisj},
		{"f04_loopWRarraySame", loopWRarraySame},
		{"f05_isFlowDep", isFlowDep},
		{"f06_isAntiDep", isAntiDep},
		{"f07_isInputDep", isInputDep},
		{"f08_isOutputDep", isOutputDep},
		{"f09_simpleLoop", simpleLoop},
		{"f10_complexLoop", complexLoop},
		{"f11_loopRAW", loopRAW},
		{"f12_loopWAR", loopWAR},
		{"f13_loopWAW", loopWAW},
		{"f14_loopRAR", loopRAR},
		{"f15_indepLoopDep", indepLoopDep},
		{"f16_loopSelfDep", loopSelfDep},
		{"f17_numOfLoops", numOfLoops}
	};
}

std::ostream &operator<<(std::ostream &os, const LoopExtractor &ext) {
  os << ext.features;
  return os;
}

} // namespace pass