// Definition einer Grammatik mit dem Namen Hello 
grammar Hello;

// Parser-Regeln
greeting  : hello 
          | bye 
          ;

hello     : 'Hello' ID ;
bye       : 'Bye' ID ;

// Lexer-Regeln
ID        : [a-zA-Z]+ ;
WS        : [ \t\r\n]+ -> skip ;
