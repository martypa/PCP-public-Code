/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

import java.util.ArrayList;
import java.util.Collection;

public class Java8_1 {
    public static void main(String[] args) {
        Collection<Account> accounts;
        accounts = new ArrayList<>();
        accounts.forEach(a -> a.check());
    }
}
