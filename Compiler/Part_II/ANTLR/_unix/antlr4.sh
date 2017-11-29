#!/bin/sh

# antlr path to actual ANTLR-4 library
antlr_path="/usr/local/lib"

echo "Generate parser and lexer using ANTLR-4..."
java -jar $antlr_path/antlr-4.7-complete.jar $*

if [ $? -eq 0 ] && [ $# -gt 0 ]; then
    echo "Compile ANTLR-generated code..."
    javac -cp $antlr_path/antlr-4.7-complete.jar *.java
fi
