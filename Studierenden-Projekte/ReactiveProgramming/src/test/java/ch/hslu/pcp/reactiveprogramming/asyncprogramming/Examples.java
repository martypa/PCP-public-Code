package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class Examples {

    /**
     * Print "start" and save System.currentTimeMillis().
     */
    @Before
    public void setUp() {
        start();
    }

    /**
     * Print "Finished" then sleep for 10 seconds to avoid the main-thread from exit.
     * This can be nescessary when using RxJava threadpools (daemon-threads).
     */
    @After
    public void tearDown() {
        print("Finished");
        sleep(10_000);
    }

    @Test
    public void synchronousMethodCall() {

        int i = 42;

        print("calculating ...");
        int result = squareSlow(i);

        print("Result: " + result);

    }


    @Test
    public void callback() throws Exception {

        // Pseudo Code
        /*
        int i = 42;
        doAsync(() -> squareSlow(i), (r) -> print(r)); // 1 Supplier, 1 Consumer

        squareAsync(i, (r1) -> {
            squareAsync(r1, (r2) -> {
                squareAsync(r2, (r3) -> print(r3));
            });
        });
        */

    }

    @Test
    public void javaFuture() throws Exception {

        ExecutorService threadpool = Executors.newFixedThreadPool(1);
        int i = 42;
        Future<Integer> f = threadpool.submit(() -> {
            print("calculating ...");
            return squareSlow(i);
        });
        print("Result: " + f.get());

    }


    @Test
    public void javaCompletableFuture() throws Exception {

        int i = 42;
        CompletableFuture<Integer> cf = CompletableFuture.supplyAsync(() -> {
            print("calculating ...");
            return squareSlow(i);
        });

         //sleep(1500);

        cf.thenAccept(r -> print(r));

    }

    @Test
    public void javaCompletableFutureComposed() throws Exception {

        int i = 42;
        CompletableFuture<Integer> cf = CompletableFuture.supplyAsync(() -> {
            print("calculating ...");
            return squareSlow(i);
        });

        cf.thenApply(r -> squareSlow(r))
                .thenApply(r -> squareSlow(r))
                .thenApply(r -> squareSlow(r))
                .thenAccept(r -> print(r))
                .exceptionally(throwable -> {
                    print("Catched: "+throwable.getMessage());
                    return null;
                });

    }


    @Test
    public void javaCompletableFutureMultipleElements() throws Exception {

        List<Integer> list = Arrays.asList(1, 2, 3);

        CompletableFuture<List<Integer>> cf = CompletableFuture.supplyAsync(() -> {
            List<Integer> result = new ArrayList<>();
            for (Integer i : list) {
                result.add(squareSlow(i));
            }
            return result;
        });

        cf.thenAccept(r -> print(r));

    }


    @Test
    public void javaCompletableFutureMultipleElements2() throws Exception {

        List<Integer> list = Arrays.asList(1, 2, 3);

        for (Integer i : list) {
            CompletableFuture.supplyAsync(() -> squareSlow(i))
                    .thenAccept(r -> print(r));
        }

    }


    @Test
    public void GoFObserver() throws Exception {

        ExecutorService threadpool = Executors.newFixedThreadPool(1);
        List<Integer> list = Arrays.asList(1, 2, 3);

        RunnableGOFObservable o = new RunnableGOFObservable(list);
        o.addObserver((obs, r) -> print(r)); // Observer als Lambda (Consumer)

        threadpool.submit(o); // execute RunnableGOFObservable

    }

    @Test
    public void extendedObserver() throws Exception {

        ExecutorService threadpool = Executors.newFixedThreadPool(1);
        List<Integer> list = Arrays.asList(1, 2, 3);

        RunnableExtObservable o = new RunnableExtObservable(list);
        o.addObserver(new PrintExtObserver<>()); // details see repo

        threadpool.submit(o); // execute RunnableExtObservable

    }

    @Test
    public void extendedObserverChaining() throws Exception {

        ExecutorService threadpool = Executors.newFixedThreadPool(1);
        List<Integer> list = Arrays.asList(1, 2, 3);

        RunnableExtObservable o1 = new RunnableExtObservable(list);

        ExtObservable<Integer> o2 = o1.addObserver(new SquareExtObservableObserver());

        o2.addObserver(new PrintExtObserver<>());

        threadpool.execute(o1);

    }

    @Test
    public void extendedObserverChainingShortNotation() throws Exception {

        ExecutorService threadpool = Executors.newFixedThreadPool(1);
        List<Integer> list = Arrays.asList(1, 2, 3);

        RunnableExtObservable source = new RunnableExtObservable(list);
        source
                .addObserver(new SquareExtObservableObserver())
                .addObserver(new PrintExtObserver<>());

        threadpool.execute(source);

    }
}