// Grammatik f�r den AdamRiese Scheme Translator
grammar AdamRieseScheme;

// Parser-Regeln
stmt   : expr '=' ;

expr   : term                       # TermOnly
       | term op=(ADD | SUB) expr   # AddSubOp
       ;

term   : factor                     # FactorOnly
       | factor op=(MUL | DIV) term # MulDivOp
       ;

factor : number                     # NumberOnly
       | '(' expr ')'               # Parens
       ;

number : DIGIT* DIGIT ;


// Lexer-Regeln
ADD    : '+' ;
SUB    : '-' ;
MUL    : '*' ;
DIV    : ':' ;
DIGIT  : [0-9]+ ;
WS     : [ \t\r\n]+ -> skip ;
