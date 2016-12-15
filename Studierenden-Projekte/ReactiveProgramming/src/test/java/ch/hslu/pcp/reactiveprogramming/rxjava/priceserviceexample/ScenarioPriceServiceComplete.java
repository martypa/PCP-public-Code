package ch.hslu.pcp.reactiveprogramming.rxjava.priceserviceexample;

import io.reactivex.Flowable;
import io.reactivex.schedulers.Schedulers;
import org.junit.Test;

import java.util.concurrent.TimeUnit;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class ScenarioPriceServiceComplete {


    @Test
    public void runScenario() {
        PriceService priceService = new PriceService();
        start();
        Flowable.range(1, 15)
                .flatMap(id -> Flowable.fromCallable(() -> priceService.getPrice(id))
                        .subscribeOn(Schedulers.io())
                )
                .doOnNext(s -> print("Received price: " + s))
                .take(5)
                .take(8000, TimeUnit.MILLISECONDS, Schedulers.io()) // change to 3000 to simulate timeout
                .sorted()
                .take(3)
                .subscribe(a -> print("One of the top 3 prices is " + a));
        print("Finished");
        sleep(20000);
    }

}
