
// Generated from Grammar.g4 by ANTLR 4.11.1

#pragma once


#include "antlr4-runtime.h"
#include "GrammarListener.h"


/**
 * This class provides an empty implementation of GrammarListener,
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
class  GrammarBaseListener : public GrammarListener {
public:

  virtual void enterE(GrammarParser::EContext * /*ctx*/) override { }
  virtual void exitE(GrammarParser::EContext * /*ctx*/) override { }

  virtual void enterE_(GrammarParser::E_Context * /*ctx*/) override { }
  virtual void exitE_(GrammarParser::E_Context * /*ctx*/) override { }

  virtual void enterR(GrammarParser::RContext * /*ctx*/) override { }
  virtual void exitR(GrammarParser::RContext * /*ctx*/) override { }

  virtual void enterT(GrammarParser::TContext * /*ctx*/) override { }
  virtual void exitT(GrammarParser::TContext * /*ctx*/) override { }

  virtual void enterT_(GrammarParser::T_Context * /*ctx*/) override { }
  virtual void exitT_(GrammarParser::T_Context * /*ctx*/) override { }

  virtual void enterS(GrammarParser::SContext * /*ctx*/) override { }
  virtual void exitS(GrammarParser::SContext * /*ctx*/) override { }

  virtual void enterF(GrammarParser::FContext * /*ctx*/) override { }
  virtual void exitF(GrammarParser::FContext * /*ctx*/) override { }


  virtual void enterEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void exitEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void visitTerminal(antlr4::tree::TerminalNode * /*node*/) override { }
  virtual void visitErrorNode(antlr4::tree::ErrorNode * /*node*/) override { }

};

