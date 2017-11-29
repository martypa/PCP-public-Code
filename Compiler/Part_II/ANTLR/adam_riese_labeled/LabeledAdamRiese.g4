// Definition der Grammatik AdamRiese
grammar LabeledAdamRiese;

// Parser-Regeln
stmt   : expr '=' ;

expr   : term               # TermOnly
       | term ADD expr      # AddOp
       ;

term   : factor             # FactorOnly
       | factor MUL term    # MulOp
       ;

factor : number             # NumberOnly
       | '(' expr ')'       # Parens
       ;

number : DIGIT* DIGIT ;


// Lexer-Regeln
ADD    : '+' ;
MUL    : '*' ;
DIGIT  : [0-9]+ ;
WS     : [ \t\r\n]+ -> skip ;
