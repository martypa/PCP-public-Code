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
package ch.hslu.pcp.compiler;

import java.io.IOException;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

/**
 * Demo Adam Riese interpreter respectively translator.
 */
public final class DemoAdamRiese {

    /**
     * Interpreter start.
     *
     * @param args The first array element is an arithmetic expression.
     * @throws java.io.IOException fired by IO problems.
     */
    public static void main(final String[] args) throws IOException {
        boolean trace = false;
        if (args.length > 1) {
            trace = args[1].contains("-trace");
        }
        // create a CharStream that reads a string from args[0]
        CharStream input = CharStreams.fromString(args[0]);
        // create a lexer that feeds off of input CharStream
        AdamRieseSchemeLexer lexer = new AdamRieseSchemeLexer(input);
        // create a buffer of tokens pulled from the lexer
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        // create a parser that feeds off the tokens buffer
        AdamRieseSchemeParser parser = new AdamRieseSchemeParser(tokens);
        // begin parsing at start rule - stmt
        ParseTree tree = parser.stmt();
        // create standard walker
        ParseTreeWalker walker = new ParseTreeWalker();
        ExtractSchemeListener extractor = new ExtractSchemeListener(trace);
        // initiate walk of tree with listener
        walker.walk(extractor, tree);
        System.out.println(extractor.getSchemeExpr());
    }
}
