%{
  #include "main.tab.h"
  #include <stdio.h>
  #include <string.h>
  int yywrap();
//  E::= TE'

//  E'::= R T E' | e
//  R:: = + | -

//  T:: = FT'

//  T'::= S F T' |e
//  S:: = * | /

//  F:: = i | (E)

// 1+2*(3)

%}


DIGIT [0-9]

%%

"+"       { return ADD; }
"-"       { return SUB; }
"*"       { return MUL; }
"/"       { return DIV; }
"("       { return LPAREN; }
")"       { return RPAREN; }
{DIGIT}+  { yylval.number = atoi(yytext); return NUMBER; }
[ \t\r\n] { /* Skip whitespace */ }

%%

