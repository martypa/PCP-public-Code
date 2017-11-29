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
package ch.hslu.pcp.compiler;

import java.io.IOException;

/**
 * Rechnen nach Adam Riese. Ein naives Programm, das arithmetische
 * Rechenausdrücke verarbeiten und ihr Ergebnis bestimmen kann. Einschränkungen
 * sind: nur ganze positive Zahlen, keine symbolischen Ausdrücke,
 * Rechenoperationen sind Addition und die Multiplikation. Multiplikation hat
 * Vorrang vor Addition. Klammerausdrücke sind erlaubt.
 */
public final class AdamRiese {

    private int nextchar;

    /**
     * Erzeugt ein AdamRiese Objekt.
     */
    public AdamRiese() {
        nextchar = 0;
    }

    /**
     * Prüft Wert auf einstelliges Digit.
     *
     * @param c zu prüfender Wert.
     * @return falls Wert zwischen 0 bis 9 ist true, sonst false.
     */
    public boolean isDigit(final int c) {
        return c >= '0' && c <= '9';
    }

    /**
     * Wirft SyntaxException, wenn Ausdruck nicht korrekt ist.
     */
    public void error() {
        throw new SyntaxException("'" + (char) nextchar + "'");
    }

    /**
     * Gibt den Wert einer Ziffer oder mehreren dezimalen Ziffern zurück.
     *
     * @return Wert des Ausdrucks.
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public int number() throws IOException {
        int value = nextchar - '0';
        nextchar = System.in.read();
        while (isDigit(nextchar)) {
            value *= 10;
            value += nextchar - '0';
            nextchar = System.in.read();
        }
        return value;
    }

    /**
     * Gibt den Wert eines Faktors oder Klammerausdruckes zurück.
     *
     * @return Wert des Faktors.
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public int factor() throws IOException {
        int value = 0;
        if (nextchar == '(') {
            nextchar = System.in.read();
            if (nextchar == '(' || isDigit(nextchar)) {
                value = expr();
                if (nextchar != ')') {
                    error();
                }
                nextchar = System.in.read();
            } else {
                error();
            }
        } else {
            value = number();
        }
        return value;
    }

    /**
     * Gibt den Wert eines Faktors oder eines Faktors multipliziert mit einem
     * Term zurück.
     *
     * @return Wert des Faktors.
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public int term() throws IOException {
        int value = factor();
        if (nextchar == '*') {
            nextchar = System.in.read();
            if (nextchar == '(' || isDigit(nextchar)) {
                value *= term();
            }
        }
        return value;
    }

    /**
     * Gibt den Wert eines Ausdrucks oder eines Terms addiert mit einem Ausdruck
     * zurück.
     *
     * @return Wert des Ausdrucks.
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public int expr() throws IOException {
        int value = term();
        if (nextchar == '+') {
            nextchar = System.in.read();
            if (nextchar == '(' || isDigit(nextchar)) {
                value += expr();
            }
        }
        return value;
    }

    /**
     * Führt eine Aktion aus. Eine Aktion ist ein Ausdruck mit
     * Gleichheitszeichen.
     *
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public void statement() throws IOException {
        final int value = expr();
        if (nextchar != '=') {
            error();
        } else {
            nextchar = System.in.read();
            System.out.println(value);
        }
    }

    /**
     * Startet die Berechnung mit einem Ausdruck. Falls kein Ausdruck vorliegt,
     * wird eine SyntaxException geworfen.
     *
     * @throws IOException wenn ein Fehler beim Lesen von der Tastatur auftritt.
     */
    public void compute() throws IOException {
        nextchar = System.in.read();
        if (nextchar == '(' || isDigit(nextchar)) {
            statement();
        } else {
            error();
        }
    }
}
