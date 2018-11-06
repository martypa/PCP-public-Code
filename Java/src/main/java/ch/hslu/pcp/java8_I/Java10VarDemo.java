package ch.hslu.pcp.java8_I;

import java.util.ArrayList;
import java.util.Map;

public class Java10VarDemo {

    public void varInAction() {
        var list = new ArrayList<Map<String, Integer>>();
        for (var map : list) { };
        var stream = ((ArrayList) list).stream();
        
    }

}
