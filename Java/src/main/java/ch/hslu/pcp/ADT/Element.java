package ch.hslu.pcp.ADT;

public class Element {

    private int val;
    private Element next = null;


    public Element(int value) {
        this.val = value;
    }

    public int getVal() {
        return val;
    }

    public Element getNext() {
        return next;
    }

    public void setNext(Element next) {
        this.next = next;
    }
}
