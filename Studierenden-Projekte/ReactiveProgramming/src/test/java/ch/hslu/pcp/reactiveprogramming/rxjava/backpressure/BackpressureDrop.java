package ch.hslu.pcp.reactiveprogramming.rxjava.backpressure;

import ch.hslu.pcp.reactiveprogramming.util.Helpers;
import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.schedulers.Schedulers;
import org.junit.Test;

import java.util.stream.IntStream;
import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class BackpressureDrop {

    @Test
    public void runScenario() {
        start();
        Flowable.create(e -> {
            IntStream.range(1, 11).forEach(i -> {
                if(!e.isCancelled()){e.onNext(i);}
            });
            e.onComplete();
        }, BackpressureStrategy.MISSING) // Backpressure Strategy of Publisher is explicit missing !!!
                .doOnNext(i -> print("Emitted item: "+i))
                .subscribeOn(Schedulers.io())
                .onBackpressureDrop(i -> print("Drop Item: "+i)) // so we have to handle this on Subscribers side
                .observeOn(Schedulers.newThread(), false, 4)
                .map(i -> {sleep(1000);return i;})
                .subscribe(Helpers::print, ex -> print("Backpressure Error")); // No BP error, should never be called
        print("Finished");
        sleep(20000);
    }
}
