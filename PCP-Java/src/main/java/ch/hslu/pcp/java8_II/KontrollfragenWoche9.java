/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_II;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class KontrollfragenWoche9 {
    
    public String joinX() {
        List<String> list = new ArrayList<>();
        list.add("x");
        list.add("X");
        list.add("x");
        return String.join("-|-", list);
    }
    
    public Comparator<String> createNaturalStringComparator() {
        return Comparator.naturalOrder();
    }
    
    public Comparator<String> createAntiNaturalStringComparator() {
        return (Comparator<String>) Comparator.naturalOrder().reversed();
    } 
    
}
