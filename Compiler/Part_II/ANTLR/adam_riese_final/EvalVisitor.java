/*
 * Copyright 2017 Hochschule Luzern - Informatik.
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

/**
 * Evaluates addition, subtraction and multiplication operations.
 */
public final class EvalVisitor extends FinalAdamRieseBaseVisitor<Integer> {

    @Override
    public Integer visitNumber(FinalAdamRieseParser.NumberContext ctx) {
        return Integer.valueOf(ctx.getText());
    }

    @Override
    public Integer visitAddSubOp(FinalAdamRieseParser.AddSubOpContext ctx) {
        int left = visit(ctx.term());
        int right = visit(ctx.expr());
        if (ctx.op.getType() == FinalAdamRieseParser.ADD) {
            return left + right;
        } else {
            return left - right;
        }
    }

    @Override
    public Integer visitMulDivOp(FinalAdamRieseParser.MulDivOpContext ctx) {
        int left = visit(ctx.factor());
        int right = visit(ctx.term());
        if (ctx.op.getType() == FinalAdamRieseParser.MUL) {
            return left * right;
        } else {
            return left / right;
        }
    }

    @Override
    public Integer visitParens(FinalAdamRieseParser.ParensContext ctx) {
        return visit(ctx.expr());
    }

    @Override
    public Integer visitStmt(FinalAdamRieseParser.StmtContext ctx) {
        Integer value = visit(ctx.expr());
        return value;
    }
}
