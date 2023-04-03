
// Generated from Grammar.g4 by ANTLR 4.11.1


#include "GrammarListener.h"
#include "GrammarVisitor.h"

#include "GrammarParser.h"


using namespace antlrcpp;

using namespace antlr4;

namespace {

struct GrammarParserStaticData final {
  GrammarParserStaticData(std::vector<std::string> ruleNames,
                        std::vector<std::string> literalNames,
                        std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  GrammarParserStaticData(const GrammarParserStaticData&) = delete;
  GrammarParserStaticData(GrammarParserStaticData&&) = delete;
  GrammarParserStaticData& operator=(const GrammarParserStaticData&) = delete;
  GrammarParserStaticData& operator=(GrammarParserStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag grammarParserOnceFlag;
GrammarParserStaticData *grammarParserStaticData = nullptr;

void grammarParserInitialize() {
  assert(grammarParserStaticData == nullptr);
  auto staticData = std::make_unique<GrammarParserStaticData>(
    std::vector<std::string>{
      "e", "e_", "r", "t", "t_", "s", "f"
    },
    std::vector<std::string>{
      "", "'+'", "'-'", "'*'", "'/'", "'('", "')'"
    },
    std::vector<std::string>{
      "", "", "", "", "", "", "", "I", "WS"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,1,8,50,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,1,0,
  	1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,23,8,1,1,2,1,2,3,2,27,8,2,1,3,1,3,1,3,
  	1,4,1,4,1,4,1,4,1,4,3,4,37,8,4,1,5,1,5,3,5,41,8,5,1,6,1,6,1,6,1,6,1,6,
  	3,6,48,8,6,1,6,0,0,7,0,2,4,6,8,10,12,0,0,47,0,14,1,0,0,0,2,22,1,0,0,0,
  	4,26,1,0,0,0,6,28,1,0,0,0,8,36,1,0,0,0,10,40,1,0,0,0,12,47,1,0,0,0,14,
  	15,3,6,3,0,15,16,3,2,1,0,16,1,1,0,0,0,17,18,3,4,2,0,18,19,3,6,3,0,19,
  	20,3,2,1,0,20,23,1,0,0,0,21,23,1,0,0,0,22,17,1,0,0,0,22,21,1,0,0,0,23,
  	3,1,0,0,0,24,27,5,1,0,0,25,27,5,2,0,0,26,24,1,0,0,0,26,25,1,0,0,0,27,
  	5,1,0,0,0,28,29,3,12,6,0,29,30,3,8,4,0,30,7,1,0,0,0,31,32,3,10,5,0,32,
  	33,3,12,6,0,33,34,3,8,4,0,34,37,1,0,0,0,35,37,1,0,0,0,36,31,1,0,0,0,36,
  	35,1,0,0,0,37,9,1,0,0,0,38,41,5,3,0,0,39,41,5,4,0,0,40,38,1,0,0,0,40,
  	39,1,0,0,0,41,11,1,0,0,0,42,48,5,7,0,0,43,44,5,5,0,0,44,45,3,0,0,0,45,
  	46,5,6,0,0,46,48,1,0,0,0,47,42,1,0,0,0,47,43,1,0,0,0,48,13,1,0,0,0,5,
  	22,26,36,40,47
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  grammarParserStaticData = staticData.release();
}

}

GrammarParser::GrammarParser(TokenStream *input) : GrammarParser(input, antlr4::atn::ParserATNSimulatorOptions()) {}

GrammarParser::GrammarParser(TokenStream *input, const antlr4::atn::ParserATNSimulatorOptions &options) : Parser(input) {
  GrammarParser::initialize();
  _interpreter = new atn::ParserATNSimulator(this, *grammarParserStaticData->atn, grammarParserStaticData->decisionToDFA, grammarParserStaticData->sharedContextCache, options);
}

GrammarParser::~GrammarParser() {
  delete _interpreter;
}

const atn::ATN& GrammarParser::getATN() const {
  return *grammarParserStaticData->atn;
}

std::string GrammarParser::getGrammarFileName() const {
  return "Grammar.g4";
}

const std::vector<std::string>& GrammarParser::getRuleNames() const {
  return grammarParserStaticData->ruleNames;
}

const dfa::Vocabulary& GrammarParser::getVocabulary() const {
  return grammarParserStaticData->vocabulary;
}

antlr4::atn::SerializedATNView GrammarParser::getSerializedATN() const {
  return grammarParserStaticData->serializedATN;
}


//----------------- EContext ------------------------------------------------------------------

GrammarParser::EContext::EContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

GrammarParser::TContext* GrammarParser::EContext::t() {
  return getRuleContext<GrammarParser::TContext>(0);
}

GrammarParser::E_Context* GrammarParser::EContext::e_() {
  return getRuleContext<GrammarParser::E_Context>(0);
}


size_t GrammarParser::EContext::getRuleIndex() const {
  return GrammarParser::RuleE;
}

void GrammarParser::EContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterE(this);
}

void GrammarParser::EContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitE(this);
}


std::any GrammarParser::EContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitE(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::EContext* GrammarParser::e() {
  EContext *_localctx = _tracker.createInstance<EContext>(_ctx, getState());
  enterRule(_localctx, 0, GrammarParser::RuleE);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(14);
    t();
    setState(15);
    e_();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- E_Context ------------------------------------------------------------------

GrammarParser::E_Context::E_Context(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

GrammarParser::RContext* GrammarParser::E_Context::r() {
  return getRuleContext<GrammarParser::RContext>(0);
}

GrammarParser::TContext* GrammarParser::E_Context::t() {
  return getRuleContext<GrammarParser::TContext>(0);
}

GrammarParser::E_Context* GrammarParser::E_Context::e_() {
  return getRuleContext<GrammarParser::E_Context>(0);
}


size_t GrammarParser::E_Context::getRuleIndex() const {
  return GrammarParser::RuleE_;
}

void GrammarParser::E_Context::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterE_(this);
}

void GrammarParser::E_Context::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitE_(this);
}


std::any GrammarParser::E_Context::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitE_(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::E_Context* GrammarParser::e_() {
  E_Context *_localctx = _tracker.createInstance<E_Context>(_ctx, getState());
  enterRule(_localctx, 2, GrammarParser::RuleE_);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(22);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case GrammarParser::T__0:
      case GrammarParser::T__1: {
        enterOuterAlt(_localctx, 1);
        setState(17);
        r();
        setState(18);
        t();
        setState(19);
        e_();
        break;
      }

      case GrammarParser::T__5: {
        enterOuterAlt(_localctx, 2);

        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- RContext ------------------------------------------------------------------

GrammarParser::RContext::RContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}


size_t GrammarParser::RContext::getRuleIndex() const {
  return GrammarParser::RuleR;
}

void GrammarParser::RContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterR(this);
}

void GrammarParser::RContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitR(this);
}


std::any GrammarParser::RContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitR(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::RContext* GrammarParser::r() {
  RContext *_localctx = _tracker.createInstance<RContext>(_ctx, getState());
  enterRule(_localctx, 4, GrammarParser::RuleR);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(26);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case GrammarParser::T__0: {
        enterOuterAlt(_localctx, 1);
        setState(24);
        antlrcpp::downCast<RContext *>(_localctx)->plus = match(GrammarParser::T__0);
        break;
      }

      case GrammarParser::T__1: {
        enterOuterAlt(_localctx, 2);
        setState(25);
        antlrcpp::downCast<RContext *>(_localctx)->min = match(GrammarParser::T__1);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- TContext ------------------------------------------------------------------

GrammarParser::TContext::TContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

GrammarParser::FContext* GrammarParser::TContext::f() {
  return getRuleContext<GrammarParser::FContext>(0);
}

GrammarParser::T_Context* GrammarParser::TContext::t_() {
  return getRuleContext<GrammarParser::T_Context>(0);
}


size_t GrammarParser::TContext::getRuleIndex() const {
  return GrammarParser::RuleT;
}

void GrammarParser::TContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterT(this);
}

void GrammarParser::TContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitT(this);
}


std::any GrammarParser::TContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitT(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::TContext* GrammarParser::t() {
  TContext *_localctx = _tracker.createInstance<TContext>(_ctx, getState());
  enterRule(_localctx, 6, GrammarParser::RuleT);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(28);
    f();
    setState(29);
    t_();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- T_Context ------------------------------------------------------------------

GrammarParser::T_Context::T_Context(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

GrammarParser::SContext* GrammarParser::T_Context::s() {
  return getRuleContext<GrammarParser::SContext>(0);
}

GrammarParser::FContext* GrammarParser::T_Context::f() {
  return getRuleContext<GrammarParser::FContext>(0);
}

GrammarParser::T_Context* GrammarParser::T_Context::t_() {
  return getRuleContext<GrammarParser::T_Context>(0);
}


size_t GrammarParser::T_Context::getRuleIndex() const {
  return GrammarParser::RuleT_;
}

void GrammarParser::T_Context::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterT_(this);
}

void GrammarParser::T_Context::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitT_(this);
}


std::any GrammarParser::T_Context::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitT_(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::T_Context* GrammarParser::t_() {
  T_Context *_localctx = _tracker.createInstance<T_Context>(_ctx, getState());
  enterRule(_localctx, 8, GrammarParser::RuleT_);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(36);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case GrammarParser::T__2:
      case GrammarParser::T__3: {
        enterOuterAlt(_localctx, 1);
        setState(31);
        s();
        setState(32);
        f();
        setState(33);
        t_();
        break;
      }

      case GrammarParser::T__0:
      case GrammarParser::T__1:
      case GrammarParser::T__5: {
        enterOuterAlt(_localctx, 2);

        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- SContext ------------------------------------------------------------------

GrammarParser::SContext::SContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}


size_t GrammarParser::SContext::getRuleIndex() const {
  return GrammarParser::RuleS;
}

void GrammarParser::SContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterS(this);
}

void GrammarParser::SContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitS(this);
}


std::any GrammarParser::SContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitS(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::SContext* GrammarParser::s() {
  SContext *_localctx = _tracker.createInstance<SContext>(_ctx, getState());
  enterRule(_localctx, 10, GrammarParser::RuleS);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(40);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case GrammarParser::T__2: {
        enterOuterAlt(_localctx, 1);
        setState(38);
        antlrcpp::downCast<SContext *>(_localctx)->mult = match(GrammarParser::T__2);
        break;
      }

      case GrammarParser::T__3: {
        enterOuterAlt(_localctx, 2);
        setState(39);
        antlrcpp::downCast<SContext *>(_localctx)->div = match(GrammarParser::T__3);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FContext ------------------------------------------------------------------

GrammarParser::FContext::FContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* GrammarParser::FContext::I() {
  return getToken(GrammarParser::I, 0);
}

GrammarParser::EContext* GrammarParser::FContext::e() {
  return getRuleContext<GrammarParser::EContext>(0);
}


size_t GrammarParser::FContext::getRuleIndex() const {
  return GrammarParser::RuleF;
}

void GrammarParser::FContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterF(this);
}

void GrammarParser::FContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<GrammarListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitF(this);
}


std::any GrammarParser::FContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<GrammarVisitor*>(visitor))
    return parserVisitor->visitF(this);
  else
    return visitor->visitChildren(this);
}

GrammarParser::FContext* GrammarParser::f() {
  FContext *_localctx = _tracker.createInstance<FContext>(_ctx, getState());
  enterRule(_localctx, 12, GrammarParser::RuleF);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(47);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case GrammarParser::I: {
        enterOuterAlt(_localctx, 1);
        setState(42);
        match(GrammarParser::I);
        break;
      }

      case GrammarParser::T__4: {
        enterOuterAlt(_localctx, 2);
        setState(43);
        match(GrammarParser::T__4);
        setState(44);
        e();
        setState(45);
        match(GrammarParser::T__5);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

void GrammarParser::initialize() {
  ::antlr4::internal::call_once(grammarParserOnceFlag, grammarParserInitialize);
}
