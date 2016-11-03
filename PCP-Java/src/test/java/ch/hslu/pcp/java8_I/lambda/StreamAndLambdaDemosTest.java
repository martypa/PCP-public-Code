/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

import java.util.function.IntFunction;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

public class StreamAndLambdaDemosTest {
    
    private final StreamAndLambdaDemos instance = new StreamAndLambdaDemos();
    
    @Test
    public void testDoIntro() {
        String result = instance.doIntro();
        assertEquals("Hansjörg, Roger", result);
    }

    @Ignore
    public void testDoDemo1() {
        instance.doDemo1();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testDoMethodRefDemo() {
        instance.doMethodRefDemo();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testDoDemo2() {
        instance.doDemo2();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testDoTerminalStreamOps() {
        instance.doTerminalStreamOps();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testDoInference() {
        instance.doInference();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testDoInfiniteStreams() {
        instance.doInfiniteStreams();
        fail("The test case is a prototype.");
    }

    @Ignore
    public void testCapturingLambdaDemo() {
        IntFunction expResult = null;
        IntFunction result = instance.capturingLambdaDemo();
        assertEquals(expResult, result);
        fail("The test case is a prototype.");
    }
    
}
