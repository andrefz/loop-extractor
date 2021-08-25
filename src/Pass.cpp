#include <iomanip>
#include <iostream>

#include "llvm/Pass.h"
#include <llvm/IR/Function.h>
#include "llvm/Support/raw_ostream.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/DependenceAnalysis.h"

#include <llvm/IR/LegacyPassManager.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>

#include "loopExtractor.hpp"

using namespace loop_extractor;
using namespace llvm;

namespace {

void visitor(Function &F, DependenceInfo &DI, LoopInfo &LI) {
	std::cerr << std::setw(4) << LoopExtractor(F, DI, LI) << std::endl;
}

struct LoopExtractorPass : public FunctionPass {
	static char ID;
	LoopExtractorPass() : FunctionPass(ID) {} 

	void getAnalysisUsage(AnalysisUsage &AU) const {
		AU.addRequired<DependenceAnalysisWrapperPass>();
		AU.addRequired<LoopInfoWrapperPass>();
		AU.setPreservesAll();
	}
	virtual bool runOnFunction(Function &F) override {
	DependenceInfo &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
	LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
	visitor(F, DI, LI);
	return false;
	}
};

} //namespace

char LoopExtractorPass::ID = 0;
static RegisterPass<LoopExtractorPass> X(/*PassArg=*/"loop-features", 
					 /*Name=*/"loop-extractor Pass",
				 	 /*CFGOnly=*/true, 
					 /*is_analysis=*/false);

static llvm::RegisterStandardPasses
    RegisterLoopExtractorPass(llvm::PassManagerBuilder::EP_EarlyAsPossible,
                          [](const llvm::PassManagerBuilder &Builder,
                             llvm::legacy::PassManagerBase &PM) {
                            PM.add(new LoopExtractorPass());
                          });

