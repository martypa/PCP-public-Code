/**
 * HSLU I
 * Module PCP
 * ruedi.arnold@hslu.ch
 */

package ch.hslu.pcp.java8_II;

import java.util.Comparator;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author taarnold
 */
public class KontrollfragenWoche9Test {
    
    private final KontrollfragenWoche9 instance = new KontrollfragenWoche9();

    @Test
    public void testJoinX() {
        String result = instance.joinX();
        assertEquals("x-|-X-|-x", result);
    }

    @Test
    public void testCreateNaturalStringComparator() {
        Comparator<String> naturalStringComparator = instance.createNaturalStringComparator();
        assertTrue(naturalStringComparator.compare("a","b") < 0);
    }

    @Test
    public void testCreateAntiNaturalStringComparator() {
        Comparator<String> naturalAntiStringComparator = instance.createAntiNaturalStringComparator();
        assertTrue(naturalAntiStringComparator.compare("a","b") > 0);
    }
    
}
