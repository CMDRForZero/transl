
// Generated from Grammar.g4 by ANTLR 4.11.1

#pragma once


#include "antlr4-runtime.h"
#include "GrammarVisitor.h"


/**
 * This class provides an empty implementation of GrammarVisitor, which can be
 * extended to create a visitor which only needs to handle a subset of the available methods.
 */
class  GrammarBaseVisitor : public GrammarVisitor {
public:

  virtual std::any visitE(GrammarParser::EContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitE_(GrammarParser::E_Context *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitR(GrammarParser::RContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitT(GrammarParser::TContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitT_(GrammarParser::T_Context *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitS(GrammarParser::SContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual std::any visitF(GrammarParser::FContext *ctx) override {
    return visitChildren(ctx);
  }


};

