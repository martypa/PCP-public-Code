/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author taarnold
 */
public class DemoInterfaceTest {
    
    public DemoInterfaceTest() {
    }

    @Test
    public void testGetLuckyNumber() {
        DemoInterface instance = new DemoInterfaceImpl();
        int result = instance.getLuckyNumber();
        assertEquals(7, result);
    }

    @Test
    public void testGetEight() {
        int result = DemoInterface.getEight();
        assertEquals(8, result);
    }

    public class DemoInterfaceImpl implements DemoInterface {
    }
    
}
