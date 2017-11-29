// Definition der Grammatik AdamRiese
grammar AdamRiese;

// Parser-Regeln
stmt   : expr '=' ;

expr   : term 
       | term addop expr 
       ;

term   : factor 
       | factor mulop term 
       ;

factor : number 
       | '(' expr ')' 
       ;

number : DIGIT* DIGIT ;
addop  : '+' ;
mulop  : '*' ;

// Lexer-Regeln
DIGIT  : [0-9]+ ;
WS     : [ \t\r\n]+ -> skip ;
