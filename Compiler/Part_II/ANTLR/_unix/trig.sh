#!/bin/sh

# antlr path to actual ANTLR-4 library
antlr_path="/usr/local/lib"

echo "Executing Testing Recognizers..."
java -cp .:$antlr_path/antlr-4.7.1-complete.jar org.antlr.v4.gui.TestRig $*
