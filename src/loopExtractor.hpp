#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include <llvm/IR/Function.h>
#include <nlohmann/json.hpp>
#include <ostream>

using namespace llvm;

using json = nlohmann::json;

namespace loop_extractor {

class LoopExtractor {
protected:
	json features;

public:
	LoopExtractor(Function &F, DependenceInfo &DI, LoopInfo &LI);
	friend std::ostream &operator<<(std::ostream &, const LoopExtractor &);
};

} // namespace loop_extractor
