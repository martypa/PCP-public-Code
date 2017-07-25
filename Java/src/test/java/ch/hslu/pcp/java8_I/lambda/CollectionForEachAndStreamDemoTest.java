/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import static org.junit.Assert.*;
import org.junit.Test;

public class CollectionForEachAndStreamDemoTest {
    
    public CollectionForEachAndStreamDemoTest() {
    }
    
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        CollectionForEachAndStreamDemo.main(args);
        // TODO review the generated test code and remove the default call to fail.
        assertTrue("Main methods should run without failure.", true);
    }

    @Test
    public void testDoStreamDemo() {
        String[] namesArray = {"Joe", "Tara", "Sue", "Tim" };
        List<String> names = Arrays.asList(namesArray);
        Optional<String> result = CollectionForEachAndStreamDemo.doStreamDemo(names);
        assertEquals("TARA TIM", result.get());
    }
    
}
