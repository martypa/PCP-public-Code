CLS
@ECHO OFF

REM antlr path to ANTLR-4 library
SET antlr_path="C:\lib"

REM java jdk path
SET java_path="C:\Program Files\Java\jdk1.8.0_151\bin"

ECHO Executing Testing Recognizers...
ECHO TestRig %*
%java_path%\java -cp .;%antlr_path%\antlr-4.7-complete.jar org.antlr.v4.gui.TestRig %*
