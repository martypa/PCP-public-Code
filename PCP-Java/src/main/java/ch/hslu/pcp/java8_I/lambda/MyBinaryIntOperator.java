/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

@FunctionalInterface
public interface MyBinaryIntOperator {
    public abstract int calc(int a, int b);
}
