/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_II;

import java.util.concurrent.CompletableFuture;

public class CompFeatureDemo {

    private static final int THREE_SECONDS = 3000;
    private static final int HALF_SECOND = 500;

    public static void main(String[] args) {
        CompFeatureDemo cfTest = new CompFeatureDemo();
        cfTest.doCompletableFutureDemo();
    }

    public void doBlockingWait(long waitingTimeMillis) {
        try {
            Thread.sleep(waitingTimeMillis); // my "long-lasting" task
        } catch (InterruptedException ie) {
            // nop. 
        }
    }

    private void doCompletableFutureDemo() {
        final CompletableFuture<String> longLastingTaskFuture
                = CompletableFuture.supplyAsync(() -> {
                    doBlockingWait(THREE_SECONDS);
                    System.out.print("1");
                    return "42";
                });
        final CompletableFuture<String> evenLongerLastingTaskFuture
                = longLastingTaskFuture.thenApplyAsync((String s) -> {
                    doBlockingWait(THREE_SECONDS);
                    System.out.print("2");
                    return "The answer is " + s;
                });
        evenLongerLastingTaskFuture.thenAcceptAsync((String s) -> {
            doBlockingWait(THREE_SECONDS);
            System.out.print(s);
        });
        System.out.println("-> Now waiting for things to happen!");
        for (int i = 0; i < 200; i++) {
            System.out.print(".");
            doBlockingWait(HALF_SECOND);
        }
        System.out.println();
        System.out.println("-> Done.");
    }

}
