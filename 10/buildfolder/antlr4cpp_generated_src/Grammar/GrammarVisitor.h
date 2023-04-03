
// Generated from Grammar.g4 by ANTLR 4.11.1

#pragma once


#include "antlr4-runtime.h"
#include "GrammarParser.h"



/**
 * This class defines an abstract visitor for a parse tree
 * produced by GrammarParser.
 */
class  GrammarVisitor : public antlr4::tree::AbstractParseTreeVisitor {
public:

  /**
   * Visit parse trees produced by GrammarParser.
   */
    virtual std::any visitE(GrammarParser::EContext *context) = 0;

    virtual std::any visitE_(GrammarParser::E_Context *context) = 0;

    virtual std::any visitR(GrammarParser::RContext *context) = 0;

    virtual std::any visitT(GrammarParser::TContext *context) = 0;

    virtual std::any visitT_(GrammarParser::T_Context *context) = 0;

    virtual std::any visitS(GrammarParser::SContext *context) = 0;

    virtual std::any visitF(GrammarParser::FContext *context) = 0;


};

