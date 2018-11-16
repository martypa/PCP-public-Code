/*
 * Copyright 2018 Hochschule Luzern - Informatik.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import java.io.IOException;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

/**
 * Demo Adam Riese interpreter.
 */
public final class DemoAdamRiese {

    /**
     * Interpreter start.
     *
     * @param args The first array element is an arithmetic expression.
     * @throws java.io.IOException fired by IO problems.
     */
    public static void main(final String[] args) throws IOException {
        // create a CharStream that reads from args[0]
        ANTLRInputStream input = new ANTLRInputStream(args[0]);
        // create a lexer that feeds off of input CharStream
        AdamRieseLabeledLexer lexer = new AdamRieseLabeledLexer(input);
        // create a buffer of tokens pulled from the lexer
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        // create a parser that feeds off the tokens buffer
        AdamRieseLabeledParser parser = new AdamRieseLabeledParser(tokens);
        // begin parsing at start rule - stmt
        ParseTree tree = parser.stmt();
        // create a visitor
        EvalVisitor eval = new EvalVisitor();
        // start walking the parse tree - visit
        Integer res = eval.visit(tree);
        System.out.println(args[0]+res);
    }
}
