/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_II;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class TheJava8CompanyProcess {

    public static void main(String[] args) {
        TheJava8CompanyProcess tj8cp = new TheJava8CompanyProcess();
        List<String> names = Arrays.asList("sue", "x", "joe", "Daniela", "J");
        System.out.println(tj8cp.cleanNames(names));
    }
// BEGIN java8_process

    public String cleanNames(List<String> names) {
        if (names == null) {
            return "";
        }
        return names
                .stream()
                .filter(name -> name.length() > 1)
                .map(name -> capitalize(name))
                .collect(Collectors.joining(","));
    }

    private String capitalize(String e) {
        return e.substring(0, 1).toUpperCase() +
                e.substring(1, e.length());
    }
// END java8_process
// BEGIN java8_process_parallel

    public String cleanNamesP(List<String> names) {
        if (names == null) {
            return "";
        }
        return names
                .parallelStream()
                .filter(n -> n.length() > 1)
                .map(e -> capitalize(e))
                .collect(Collectors.joining(","));
    }
// END java8_process_parallel
}
