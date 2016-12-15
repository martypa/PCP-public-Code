package ch.hslu.pcp.reactiveprogramming.rxjava.rxjavavsjava8streams;

import io.reactivex.Flowable;
import io.reactivex.schedulers.Schedulers;
import org.junit.Test;

import java.util.Arrays;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.print;
import static ch.hslu.pcp.reactiveprogramming.util.Helpers.sleep;
import static ch.hslu.pcp.reactiveprogramming.util.Helpers.start;

public class RxJavaVsJava8StreamsComplete {

    @Test
    public void runRxJava(){
        start();
        Flowable.fromIterable(Arrays.asList(1,2,3,4,5,6))
                .map(x -> x*x)
                .filter(x -> x>4)
                .take(2)
                .subscribeOn(Schedulers.computation()) // Worker Scheduler
                .observeOn(Schedulers.single()) // z.B. UI Scheduler
                .subscribe(r -> print(r));
        print("Finished");
        sleep(5000);
    }

    @Test
    public void runRxJavaWithPrintsAndThreeSchedulers(){
        start();
        Flowable.fromIterable(Arrays.asList(1,2,3,4,5,6))
                .map(x -> x*x)
                .doOnNext(r -> print("after map "+r))
                .subscribeOn(Schedulers.io())
                // Operationen hier zurückliegend werden auf dem IOScheduler ausgeführt

                // Operationen ab hier werden auf dem ComputationScheduler ausgeführt
                .observeOn(Schedulers.computation())
                .filter(x -> x>4)
                .doOnNext(r -> print("after filter "+r))
                .take(2)

                // aber nur bis hier, da ein weiteres observeOn kommt
                // der nachfolgende Subscriber wird auf dem SingleScheduler ausgeführt
                .observeOn(Schedulers.single())
                .subscribe(r -> print("result "+r));
        print("Finished");
        sleep(5000);
    }

    @Test
    public void runJava8Streams(){
        start();
        Arrays.asList(1,2,3,4,5,6)
                .stream()
                .map(x -> x*x)
                .filter(x -> x>4)
                .limit(2)
                .forEach(r -> print(r));
        print("Finished");
    }
}
