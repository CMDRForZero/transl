
// Generated from Grammar.g4 by ANTLR 4.11.1

#pragma once


#include "antlr4-runtime.h"
#include "GrammarParser.h"


/**
 * This interface defines an abstract listener for a parse tree produced by GrammarParser.
 */
class  GrammarListener : public antlr4::tree::ParseTreeListener {
public:

  virtual void enterE(GrammarParser::EContext *ctx) = 0;
  virtual void exitE(GrammarParser::EContext *ctx) = 0;

  virtual void enterE_(GrammarParser::E_Context *ctx) = 0;
  virtual void exitE_(GrammarParser::E_Context *ctx) = 0;

  virtual void enterR(GrammarParser::RContext *ctx) = 0;
  virtual void exitR(GrammarParser::RContext *ctx) = 0;

  virtual void enterT(GrammarParser::TContext *ctx) = 0;
  virtual void exitT(GrammarParser::TContext *ctx) = 0;

  virtual void enterT_(GrammarParser::T_Context *ctx) = 0;
  virtual void exitT_(GrammarParser::T_Context *ctx) = 0;

  virtual void enterS(GrammarParser::SContext *ctx) = 0;
  virtual void exitS(GrammarParser::SContext *ctx) = 0;

  virtual void enterF(GrammarParser::FContext *ctx) = 0;
  virtual void exitF(GrammarParser::FContext *ctx) = 0;


};

