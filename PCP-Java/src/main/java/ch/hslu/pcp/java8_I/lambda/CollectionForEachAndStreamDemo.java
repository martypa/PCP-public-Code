/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class CollectionForEachAndStreamDemo {
    
    public static void main(String args[]) {
        
        String[] namesArray = {"Joe", "Tara", "Sue", "Tim" };
        List<String> names = Arrays.asList(namesArray);
        
        // Using a method reference
        names.forEach(System.out::println);
        
        // Using a Lambda
        names.forEach(s -> System.out.println(s));             
    }

    public static Optional<String> doStreamDemo(List<String> names) {
        Optional<String> x = names.stream()
                .filter(s -> s.startsWith("T"))
                .map(s -> s.toUpperCase())
                .reduce((s, t) -> s + " " + t);
        return x;
    }
}
