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

/**
 * Transforms addition, subtraction and multiplication operations into 
 * Scheme expressions.
 */
public final class ExtractSchemeListener extends AdamRieseSchemeBaseListener {

    private boolean trace;
    private String schemeExpr;

    public ExtractSchemeListener(boolean trace) {
        this.trace = trace;
        schemeExpr = "";
    }

    @Override
    public void enterAddSubOp(AdamRieseSchemeParser.AddSubOpContext ctx) {
        if (trace) {
            System.out.println("enterAddSubOp");
        }
        schemeExpr = schemeExpr.concat("(" + ctx.op.getText());
    }

    @Override
    public void exitAddSubOp(AdamRieseSchemeParser.AddSubOpContext ctx) {
        if (trace) {
            System.out.println("exitAddSubOp");
        }
        schemeExpr = schemeExpr.concat(")");
    }

    @Override
    public void enterMulDivOp(AdamRieseSchemeParser.MulDivOpContext ctx) {
        if (trace) {
            System.out.println("enterMulDivOp");
        }
        String op = ctx.op.getType() == AdamRieseSchemeParser.DIV ? "/" : ctx.op.getText();
        schemeExpr = schemeExpr.concat("(" + op);
    }

    @Override
    public void exitMulDivOp(AdamRieseSchemeParser.MulDivOpContext ctx) {
        if (trace) {
            System.out.println("exitMulDivOp");
        }
        schemeExpr = schemeExpr.concat(")");
    }

    @Override
    public void enterNumber(AdamRieseSchemeParser.NumberContext ctx) {
        if (trace) {
            System.out.println("enterNumber");
        }
        schemeExpr = schemeExpr.concat(" " + ctx.getText());
    }

    public String getSchemeExpr() {
        return schemeExpr;
    }
}
