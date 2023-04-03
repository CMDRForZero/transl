#include "GrammarBaseListener.h"
#include "GrammarBaseVisitor.h"
#include "GrammarLexer.h"
#include "GrammarParser.h"
#include <ANTLRInputStream.h>
#include <algorithm>
#include <antlr4-runtime.h>
#include <any>
#include <exception>
#include <iomanip>
#include <iostream>
#include <stdexcept>
#include <string.h>
#include <string>

int result = -1000;
class Listener : public GrammarBaseListener {};

struct OP {
  int val;
  char op;
};

int do_op(int to_be, int not_to_be, char op) {
  printf("DO_OP: %d %c %d\n", to_be, op, not_to_be);
  switch (op) {
  case '*':
    return to_be * not_to_be;
  case '/':
    return to_be / not_to_be;
  case '+':
    return to_be + not_to_be;
  case '-':
    return to_be - not_to_be;
  default:
    printf("Unknown op!\n\n");
    exit(-1);
  }
}

class Visitor : public GrammarBaseVisitor {
public:
  std::any visitE(GrammarParser::EContext *ctx) override {
    // e: t e_;
    auto pre_t = visitT(ctx->t());
    int t = std::any_cast<int>(pre_t);
    std::cout << "Contained type (should be int): " << pre_t.type().name()
              << "\n";
    std::cout << "READ T IN E=" << t << "\n";
    if (ctx->e_() == nullptr)
      if (ctx->e_()->r() == nullptr)
        return t;
    // auto ptr = std::any_cast<struct OP *>(visit(ctx->e_()));
    struct OP ptr; //= std::any_cast<struct OP *>(visit(ctx->e_()));
    std::any pre_ptr;
    try {
      // ptr = std::any_cast<struct OP *>(visit(ctx->e_()));
      pre_ptr = (this->visitE_(ctx->e_()));
      std::cout << "Contained type: " << pre_ptr.type().name() << "\n";
      ptr = std::any_cast<struct OP>(pre_ptr);
      std::cout << "\n\nALL GOOD:" << std::quoted(typeid(pre_ptr).name())
                << "\n\n";
    } catch (const std::bad_any_cast &e) {
      std::cout << "Bad any cast!\n";
      std::cout << "Message:" << e.what() << "\n";
      std::cout << std::quoted(typeid(pre_ptr).name()) << "\n";
      if (ctx->e_()->t() != nullptr)
        std::cout << "Where:" << ctx->e_()->t()->toString() << "\n";
      std::cout << "-------------\n";
      return t;
    }
    result = do_op(t, ptr.val, ptr.op);
    // free(ptr);

    return result;
  }

  std::any visitE_(GrammarParser::E_Context *ctx) override {
    // e_: r t e_ | ;
    if (ctx->r() == nullptr) {
      std::cout << "Return nullptr\n";
      return nullptr;
    }
    struct OP ptr = OP{};
    if (ctx->r()->plus != nullptr) {
      ptr.op = '+';
    } else {
      ptr.op = '-';
    }
    ptr.val = std::any_cast<int>(visitT(ctx->t()));
    if (ptr.op == '-') {
      ptr.val = ptr.val * -1;
      ptr.op = '+';
    }
    if (ctx->e_() != nullptr) {
      if (ctx->e_()->r() != nullptr) {
        auto innerOp = std::any_cast<struct OP>(visitE_(ctx->e_()));
        ptr.val = do_op(ptr.val, innerOp.val, innerOp.op);
      }
    }

    auto result_any = std::make_any<struct OP>(ptr);
    std::cout << "\n\nContained type (should be struct OP): "
              << result_any.type().name() << "\n\n";

    return result_any;
  }

  std::any visitT(GrammarParser::TContext *ctx) override {
    // t: f t_;
    auto pre_f = this->visitF(ctx->f());
    int f = std::any_cast<int>(pre_f);
    std::cout << "Contained type (should be int) int VISIT_T:"
              << pre_f.type().name() << "\n";
    std::cout << "READ F IN T=" << f << "\n";
    if (ctx->t_() == nullptr)
      if (ctx->t_()->s() != nullptr) {
        return f;
      }
    struct OP ptr; // = std::any_cast<struct OP *>(visit(ctx->t_()));
    std::any pre_ptr;
    try {
      pre_ptr = this->visitT_(ctx->t_());
      std::cout << "Contained type: " << pre_ptr.type().name() << "\n";
      ptr = std::any_cast<struct OP>(pre_ptr);
      std::cout << "\n\nALL GOOD:" << std::quoted(typeid(pre_ptr).name())
                << "\n\n";
    } catch (const std::bad_any_cast &e) {
      std::cout << "Bad any cast!\n";
      std::cout << "Message:" << e.what() << "\n";
      std::cout << std::quoted(typeid(pre_ptr).name()) << "\n";
      if (ctx->t_()->f() != nullptr)
        std::cout << "Where:" << ctx->t_()->f()->toString() << "\n";
      std::cout << "-------------\n";
      return f;
    }
    int result = do_op(f, ptr.val, ptr.op);
    // free(ptr);

    return result;
  }

  std::any visitT_(GrammarParser::T_Context *ctx) override {
    // t_: s f t_ | ;
    if (ctx->s() == nullptr) {
      std::cout << "Return nullptr from t_\n";
      return nullptr;
    }
    struct OP ptr = OP();
    if (ctx->s()->mult != nullptr) {
      ptr.op = '*';
    } else {
      ptr.op = '/';
    }
    ptr.val = std::any_cast<int>(visitF(ctx->f()));
    if (ctx->t_() != nullptr) {
      if (ctx->t_()->s() != nullptr) {
        auto innerOp = std::any_cast<struct OP *>(visitT_(ctx->t_()));
        ptr.val = do_op(ptr.val, innerOp->val, innerOp->op);
      }
    }

    auto result_any = std::make_any<struct OP>(ptr);
    std::cout << "\n\nContained type (should be struct OP): "
              << result_any.type().name() << "\n\n";

    return result_any;
  }

  std::any visitF(GrammarParser::FContext *ctx) override {
    // f: I | '(' e ')';
    if (ctx->I() != nullptr) {
      return std::stoi(ctx->I()->getText());
    } else if (ctx->e() != nullptr) {
      return std::any_cast<int>(visitE(ctx->e()));
    }
    throw std::runtime_error("Ошибка в F\n");
  }
};

int exec(antlr4::tree::ParseTree *tree) {
  // tree->children;
  Visitor *visitor = new Visitor();
  std::cout << "\n\n";
  std::any result_any = visitor->visit(tree);
  result = std::any_cast<int>(result_any);
  std::cout << result << "\n";
  // std::cout << ;
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
