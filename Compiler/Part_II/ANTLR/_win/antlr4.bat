CLS
@ECHO OFF

REM antlr path to actual ANTLR-4 library
SET antlr_path="C:\lib"

REM java jdk path
SET java_path="C:\Program Files\Java\jdk-10.0.2\bin"

ECHO Generate parser and lexer using ANTLR-4...
%java_path%\java -cp %antlr_path%\antlr-4.7.1-complete.jar org.antlr.v4.Tool %*

IF NOT %1.==. IF NOT errorlevel 1 (
    ECHO Compile ANTLR-generated code...
    %java_path%\javac -cp %antlr_path%\antlr-4.7.1-complete.jar *.java
)
