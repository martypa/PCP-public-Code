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
 * Evaluates addition and multiplication operations.
 */
public final class EvalVisitor extends AdamRieseLabeledBaseVisitor<Integer>{

    @Override
    public Integer visitNumber(AdamRieseLabeledParser.NumberContext ctx) {
        return Integer.valueOf(ctx.getText());
    }

    @Override
    public Integer visitAddOp(AdamRieseLabeledParser.AddOpContext ctx) {
        int left = visit(ctx.term());
        int right = visit(ctx.expr());
        return left+right;
    }

    @Override
    public Integer visitMulOp(AdamRieseLabeledParser.MulOpContext ctx) {
        int left = visit(ctx.factor());
        int right = visit(ctx.term());
        return left*right;
    }

    @Override
    public Integer visitParens(AdamRieseLabeledParser.ParensContext ctx) {
        return visit(ctx.expr());
    }

    @Override
    public Integer visitStmt(AdamRieseLabeledParser.StmtContext ctx) {
        Integer value = visit(ctx.expr());
        return value;
    }
}
