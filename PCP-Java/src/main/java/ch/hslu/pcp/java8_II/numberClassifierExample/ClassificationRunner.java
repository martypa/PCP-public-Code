/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
* 
* Example code from https://github.com/oreillymedia/functional_thinking
*/

package ch.hslu.pcp.java8_II.numberClassifierExample;

public class ClassificationRunner {
    public static void main(String[] args) {
        for (int number = 5; number<8; number++) {
            classifyImperative(number);
            classifyImperativeMoreFunctional(number);
            classifyFunctional(number);
            classifyImperativeOptimized(number);
        }
        
    }

    private static void classifyImperative(final int number) {
        NumberClassifierImperative nci = new NumberClassifierImperative(number);
        if (nci.isPerfect()) {
            System.out.println(number + " is a perfect number.");
        } else {
            System.out.println(number + " is NOT a perfect number.");
        }
    }
    
    private static void classifyImperativeMoreFunctional(final int number) {
        if (NumberClassifierImperativeMoreFunctional.isPerfect(number)) {
            System.out.println(number + " is a perfect number.");
        } else {
            System.out.println(number + " is NOT a perfect number.");
        }
    }
    
    private static void classifyFunctional(final int number) {
        if (NumberClassifierFunctional.isPerfect(number)) {
            System.out.println(number + " is a perfect number.");
        } else {
            System.out.println(number + " is NOT a perfect number.");
        }
    }    
   
    private static void classifyImperativeOptimized(final int number) {
        NumberClassifierImperativeOptimized ncio = new NumberClassifierImperativeOptimized(number);
        if (ncio.isPerfect()) {
            System.out.println(number + " is a perfect number.");
        } else {
            System.out.println(number + " is NOT a perfect number.");
        }
    }
}
