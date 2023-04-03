#include "GrammarBaseListener.h"
#include "GrammarBaseVisitor.h"
#include "GrammarLexer.h"
#include "GrammarParser.h"
#include <ANTLRInputStream.h>
#include <algorithm>
#include <antlr4-runtime.h>
#include <any>
#include <exception>
#include <iostream>
#include <stdexcept>
#include <string>

class Listener : public GrammarBaseListener {};

class Visitor : public GrammarBaseVisitor {
public:
  std::any visitE(GrammarParser::EContext *ctx) override {
    return std::any_cast<int>(visit(ctx->t())) +
           (ctx->e_() ? std::any_cast<int>(visit(ctx->e_())) : 0);
  }

  std::any visitE_(GrammarParser::E_Context *ctx) override {
    if (!ctx->r()) {
      return 0;
    }
    int sign = ctx->r()->plus != nullptr ? 1 : -1;
    return sign * std::any_cast<int>(visit(ctx->t())) +
           (ctx->e_() ? std::any_cast<int>(visit(ctx->e_())) : 0);
  }

  std::any visitT(GrammarParser::TContext *ctx) override {
    return std::any_cast<int>(visit(ctx->f())) *
           (ctx->t_() ? std::any_cast<int>(visit(ctx->t_())) : 1);
  }

  std::any visitT_(GrammarParser::T_Context *ctx) override {
    if (!ctx->s()) {
      return 1;
    }
    int factor = ctx->s()->mult != nullptr ? 1 : -1;
    return std::any_cast<int>(visit(ctx->f())) * factor *
           (ctx->t_() ? std::any_cast<int>(visit(ctx->t_())) : 1);
  }

  std::any visitF(GrammarParser::FContext *ctx) override {
    if (ctx->I()) {
      return std::stoi(ctx->I()->getText());
    } else {
      return std::any_cast<int>(visit(ctx->e()));
    }
  }
};

int exec(antlr4::tree::ParseTree *tree) {
  // tree->children;
  Visitor *visitor = new Visitor();
  std::cout << "\n\n";
  visitor->visit(tree);
  int result = std::any_cast<int>(visitor->visit(tree));
  std::cout << result;
  std::cout << "\n\n";
  return 0;
}

int main(int argc, const char *argv[]) {
  std::ifstream stream;
  if (argc > 1) {
    stream.open(argv[1]);
    std::cout << argv[1] << std::endl;
  } else {
    stream.open("../stream.txt");
  }
  antlr4::ANTLRInputStream input(stream);

  GrammarLexer lexer(&input);
  antlr4::CommonTokenStream tokens(&lexer);

  tokens.fill();
  for (auto token : tokens.getTokens()) {
    std::cout << token->toString() << std::endl;
  }

  GrammarParser parser(&tokens);
  Listener listener;
  parser.addParseListener(&listener);

  antlr4::tree::ParseTree *tree = parser.e();

  std::cout << tree->toStringTree(&parser) << std::endl << std::endl;

  std::cout << "Output=";

  // return 0;
  return exec(tree);
}
