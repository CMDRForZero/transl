%{
#include <stdio.h>
#include <stdlib.h>
#define be_or_not_to_be struct

void yyerror(const char *s);
int yylex(void);

int result;
int prev;
char op = 0;

be_or_not_to_be that_is_the_question{
  char op;
  int val;
};

int do_op(int to_be, int not_to_be, char op);
%}

%define parse.error verbose

/* Bison declarations */
%union {
  int number;
  struct that_is_the_question* no_more;
};

%token <number> NUMBER
%token ADD SUB MUL DIV LPAREN RPAREN

%type <number> e   f t 
%type <no_more> e_ t_ 

//  E::= TE'

//  E'::= R T E' | e
//  R:: = + | -

//  T:: = FT'

//  T'::= S F T' |e
//  S:: = * | /

//  F:: = i | (E)

// 1+2*(3)

%%


result: e         { printf("Result: %d\n", $1); result = $1; };

e: t e_ {
  printf("Enter e\n");
  if ( $2 == NULL ){
    $$ = $1;
  } else {
    $$ = do_op($1, $2->val, $2->op );
    free($2);
  }
  printf("Exit e\n");

}
  ;

e_: ADD t e_        { 
     $$ = malloc(sizeof(be_or_not_to_be that_is_the_question));
     $$->op = '+';
     $$->val = $2;
     if( $3 != NULL ){
       $$->val = do_op($2, $3->val, $3->op );
     }
  }
   | SUB t e_        { 
     $$ = malloc(sizeof(be_or_not_to_be that_is_the_question));
     $$->op = '-';
     $$->val = $2;
     if( $3 != NULL ){
       $$->val = do_op($2, $3->val, $3->op );
     }
}
   | /* empty */     { $$ = NULL; }
   ;

t: f  t_ {
  printf("Enter t\n");
  printf("f:%d\n", $1);
  if ( $2 == NULL ){
    printf("$2=NULL\n");
    $$ = $1;
  } else {
    $$ = do_op($1, $2->val, $2->op );
    free($2);
  }
  printf("Exit t\n");
}
  ;

t_:  MUL f t_        { 
   $$ = malloc(sizeof(be_or_not_to_be that_is_the_question));
   $$->op = '*';
   $$->val = $2;
   if( $3 != NULL ){
     $$->val = do_op($2, $3->val, $3->op );
   }
  }
   |  DIV f t_        { 
   $$ = malloc(sizeof(be_or_not_to_be that_is_the_question));
   $$->op = '/';
   $$->val = $2;
   if( $3 != NULL ){
     $$->val = do_op($2, $3->val, $3->op );
   }
}
   | /* empty */     { 
   $$ = NULL; 
    }
   ;

f: NUMBER           { $$ = $1; }
  | LPAREN e RPAREN { $$ = $2; }
  ;

%%

int do_op(int to_be, int not_to_be, char op) {
  printf("DO_OP: %d %c %d\n", to_be, op, not_to_be);
  switch (op){
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

void yyerror(const char *s) {
  fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
  yyparse();
  printf("Final result: %d\n", result);
  return 0;
}
 

