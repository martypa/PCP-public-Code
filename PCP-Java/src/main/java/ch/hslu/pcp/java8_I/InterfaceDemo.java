/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I;

public class InterfaceDemo implements DemoInterface, OtherInterface {

    @Override
    public int getLuckyNumber() {
        return DemoInterface.super.getLuckyNumber();
    }
}
