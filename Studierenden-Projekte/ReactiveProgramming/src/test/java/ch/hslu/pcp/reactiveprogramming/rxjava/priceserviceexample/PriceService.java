package ch.hslu.pcp.reactiveprogramming.rxjava.priceserviceexample;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;


public class PriceService {

    public Double getPrice(int id) {
        sleep((int) (1000 + 1000*(id-1) + (Math.random()*100 - Math.random()*200) ));
        return (Math.random()*5000) / 100d;
    }
}
