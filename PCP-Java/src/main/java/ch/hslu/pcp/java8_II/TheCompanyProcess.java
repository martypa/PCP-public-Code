/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_II;

import java.util.Arrays;
import java.util.List;

public class TheCompanyProcess {

    public static void main(String[] args) {
        TheCompanyProcess tcp = new TheCompanyProcess();
        List<String> names = Arrays.asList("sue", "x", "joe", "Daniela", "J");
        System.out.println(tcp.cleanNames(names));
    }
    
    public String cleanNames(List<String> listOfNames) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < listOfNames.size(); i++) {
            if (listOfNames.get(i).length() > 1) {
                result.append(capitalize(
                        listOfNames.get(i))).append(",");
            }
        }
        return result.substring(0, result.length() - 1).toString();
    }

    private String capitalize(String s) {
        return s.substring(0, 1).toUpperCase() + 
                s.substring(1, s.length());
    }
}
