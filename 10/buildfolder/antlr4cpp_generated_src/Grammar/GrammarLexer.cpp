
// Generated from Grammar.g4 by ANTLR 4.11.1


#include "GrammarLexer.h"


using namespace antlr4;



using namespace antlr4;

namespace {

struct GrammarLexerStaticData final {
  GrammarLexerStaticData(std::vector<std::string> ruleNames,
                          std::vector<std::string> channelNames,
                          std::vector<std::string> modeNames,
                          std::vector<std::string> literalNames,
                          std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), channelNames(std::move(channelNames)),
        modeNames(std::move(modeNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  GrammarLexerStaticData(const GrammarLexerStaticData&) = delete;
  GrammarLexerStaticData(GrammarLexerStaticData&&) = delete;
  GrammarLexerStaticData& operator=(const GrammarLexerStaticData&) = delete;
  GrammarLexerStaticData& operator=(GrammarLexerStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> channelNames;
  const std::vector<std::string> modeNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag grammarlexerLexerOnceFlag;
GrammarLexerStaticData *grammarlexerLexerStaticData = nullptr;

void grammarlexerLexerInitialize() {
  assert(grammarlexerLexerStaticData == nullptr);
  auto staticData = std::make_unique<GrammarLexerStaticData>(
    std::vector<std::string>{
      "T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "I", "WS"
    },
    std::vector<std::string>{
      "DEFAULT_TOKEN_CHANNEL", "HIDDEN"
    },
    std::vector<std::string>{
      "DEFAULT_MODE"
    },
    std::vector<std::string>{
      "", "'+'", "'-'", "'*'", "'/'", "'('", "')'"
    },
    std::vector<std::string>{
      "", "", "", "", "", "", "", "I", "WS"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,0,8,38,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
  	2,7,7,7,1,0,1,0,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,6,4,6,31,8,
  	6,11,6,12,6,32,1,7,1,7,1,7,1,7,0,0,8,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,
  	8,1,0,2,1,0,48,57,3,0,9,10,13,13,32,32,38,0,1,1,0,0,0,0,3,1,0,0,0,0,5,
  	1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,
  	0,1,17,1,0,0,0,3,19,1,0,0,0,5,21,1,0,0,0,7,23,1,0,0,0,9,25,1,0,0,0,11,
  	27,1,0,0,0,13,30,1,0,0,0,15,34,1,0,0,0,17,18,5,43,0,0,18,2,1,0,0,0,19,
  	20,5,45,0,0,20,4,1,0,0,0,21,22,5,42,0,0,22,6,1,0,0,0,23,24,5,47,0,0,24,
  	8,1,0,0,0,25,26,5,40,0,0,26,10,1,0,0,0,27,28,5,41,0,0,28,12,1,0,0,0,29,
  	31,7,0,0,0,30,29,1,0,0,0,31,32,1,0,0,0,32,30,1,0,0,0,32,33,1,0,0,0,33,
  	14,1,0,0,0,34,35,7,1,0,0,35,36,1,0,0,0,36,37,6,7,0,0,37,16,1,0,0,0,2,
  	0,32,1,6,0,0
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  grammarlexerLexerStaticData = staticData.release();
}

}

GrammarLexer::GrammarLexer(CharStream *input) : Lexer(input) {
  GrammarLexer::initialize();
  _interpreter = new atn::LexerATNSimulator(this, *grammarlexerLexerStaticData->atn, grammarlexerLexerStaticData->decisionToDFA, grammarlexerLexerStaticData->sharedContextCache);
}

GrammarLexer::~GrammarLexer() {
  delete _interpreter;
}

std::string GrammarLexer::getGrammarFileName() const {
  return "Grammar.g4";
}

const std::vector<std::string>& GrammarLexer::getRuleNames() const {
  return grammarlexerLexerStaticData->ruleNames;
}

const std::vector<std::string>& GrammarLexer::getChannelNames() const {
  return grammarlexerLexerStaticData->channelNames;
}

const std::vector<std::string>& GrammarLexer::getModeNames() const {
  return grammarlexerLexerStaticData->modeNames;
}

const dfa::Vocabulary& GrammarLexer::getVocabulary() const {
  return grammarlexerLexerStaticData->vocabulary;
}

antlr4::atn::SerializedATNView GrammarLexer::getSerializedATN() const {
  return grammarlexerLexerStaticData->serializedATN;
}

const atn::ATN& GrammarLexer::getATN() const {
  return *grammarlexerLexerStaticData->atn;
}




void GrammarLexer::initialize() {
  ::antlr4::internal::call_once(grammarlexerLexerOnceFlag, grammarlexerLexerInitialize);
}
