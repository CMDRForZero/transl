grammar Grammar;

//  E::= TE'

//  E'::= R T E' | e
//  R:: = + | -

//  T:: = FT'

//  T'::= S F T' |e
//  S:: = * | /

//  F:: = i | (E)

// 1+2*(3)

e: t e_;
e_: r t e_ | ;
r: plus='+' | min='-';
t: f t_;
t_: s f t_ | ;
s:  mult='*' | div='/';
f: I | '(' e ')'; 

I: [0-9]+;
WS: [ \t\r\n] -> skip;
