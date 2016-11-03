/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

@FunctionalInterface
public interface BiToIntFunction<T> {
    
    public abstract int doSomething(T t1, T t2);
    
}
