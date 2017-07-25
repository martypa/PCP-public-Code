/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I;

public interface OtherInterface {
    
    default int getLuckyNumber() {
        return 7;
    }
    
    static int getEight() {
        return 8;
    }  
}

