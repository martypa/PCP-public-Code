package ch.hslu.pcp.reactiveprogramming.rxjava.rxjavavsjava8streams;

import io.reactivex.Flowable;
import org.junit.Test;

import java.util.Arrays;
import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class RxJavaVsJava8StreamsExample {

    @Test
    public void runRxJava(){
        start();
        Flowable.fromIterable(Arrays.asList(1,2,3,4,5,6))
                .map(x -> x*x)
                .filter(x -> x>4)
                .take(2)
                .subscribe(r -> print(r));
        print("Finished");
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
