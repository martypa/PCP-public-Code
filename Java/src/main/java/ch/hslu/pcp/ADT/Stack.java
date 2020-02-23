package ch.hslu.pcp.ADT;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Optional;

public class Stack {

    private ArrayList<Element> stackList;

    public Stack() {
        this.stackList = new ArrayList<>();
    }

    public void push(Element e) {
        if(stackList.isEmpty()){
            stackList.add(e);
        }else{
            Element previousE = stackList.get(stackList.size()-1);
            previousE.setNext(e);
            stackList.add(e);
        }
    }

    public Element top() {
        stackList.get(stackList.size()-1);
        stackList.remove(stackList.size()-1);
    }

    public boolean pop() {

    }

    public void print() {

    }

    public boolean isEmpty() {

    }

    public int size() {

    }

}
