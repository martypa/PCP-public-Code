/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
* 
* Example code from https://github.com/oreillymedia/functional_thinking
*/

package ch.hslu.pcp.java8_II.numberClassifierExample;

import java.util.stream.IntStream;
import static java.util.stream.IntStream.range;

public class NumberClassifierFunctional {

    public static IntStream factorsOf(int number) {    // <1>
        return range(1, number + 1)
                .filter(potential -> number % potential == 0);
    }

    public static int aliquotSum(int number) {
        return factorsOf(number).sum() - number;      // <2>
    }

    public static boolean isPerfect(int number) {     // <3>
        return aliquotSum(number) == number;
    }

    public static boolean isAbundant(int number) {
        return aliquotSum(number)> number;
    }

    public static boolean isDeficient(int number) {
        return aliquotSum(number) < number;
    }                                                 // <4>
}                                               
