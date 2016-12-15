package ch.hslu.pcp.reactiveprogramming.rxjava.backpressure;

import ch.hslu.pcp.reactiveprogramming.util.Helpers;
import io.reactivex.Flowable;
import io.reactivex.schedulers.Schedulers;
import org.junit.Test;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class BackpressureReactivePull {

    @Test
    public void runScenario(){
        start();
        Flowable.range(0,5)
                .doOnNext(i -> print("Emitted item: "+i))
                .subscribeOn(Schedulers.io())
                .observeOn(Schedulers.newThread(), true, 4)
                // observeOn has an internal buffer of 4 (128 default),
                // therefore publisher will not be blocked at the beginning!
                // after 4 elements, pubilsher will be blocked via reactive-pull-model
                // -> do not request until queue is half empty.
                // therefore NO backpressure error will be thrown
                .map(i -> {sleep(1000);return i;})
                .subscribe(Helpers::print, throwable -> print("Backpressure Error"));
        print("Finished");
        sleep(20000);
    }
}
