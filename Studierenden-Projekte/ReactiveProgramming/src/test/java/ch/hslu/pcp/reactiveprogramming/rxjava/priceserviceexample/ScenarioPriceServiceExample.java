package ch.hslu.pcp.reactiveprogramming.rxjava.priceserviceexample;

import io.reactivex.Flowable;
import io.reactivex.schedulers.Schedulers;
import org.junit.Test;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class ScenarioPriceServiceExample {


    @Test
    public void runScenario() {
        PriceService priceService = new PriceService();
        start();
        Flowable.range(1, 10)
                .flatMap(id -> Flowable.fromCallable(() -> priceService.getPrice(id))
                        .subscribeOn(Schedulers.io())
                )
                .doOnNext(s -> print("Received price: " + s))
                .sorted()
                .take(3)
                .subscribe(a -> print("One of the top 3 prices is " + a));

        sleep(20000);
    }

}
