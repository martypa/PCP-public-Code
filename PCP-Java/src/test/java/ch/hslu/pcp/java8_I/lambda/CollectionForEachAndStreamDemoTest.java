/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ch.hslu.pcp.java8_I.lambda;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author taarnold
 */
public class CollectionForEachAndStreamDemoTest {
    
    public CollectionForEachAndStreamDemoTest() {
    }
    
     /**
     * Test of main method, of class CollectionForEachAndStreamDemo.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        CollectionForEachAndStreamDemo.main(args);
        // TODO review the generated test code and remove the default call to fail.
        assertTrue("Main methods should run without failure.", true);
    }

    /**
     * Test of doStreamDemo method, of class CollectionForEachAndStreamDemo.
     */
    @Test
    public void testDoStreamDemo() {
        String[] namesArray = {"Joe", "Tara", "Sue", "Tim" };
        List<String> names = Arrays.asList(namesArray);
        Optional<String> result = CollectionForEachAndStreamDemo.doStreamDemo(names);
        assertEquals("TARA TIM", result.get());
    }
    
}
