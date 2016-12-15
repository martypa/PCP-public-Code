package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import java.util.Collection;
import java.util.Iterator;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.squareSlow;

public class RunnableExtObservable extends ExtObservable<Integer> implements Runnable {

    private Iterator<Integer> iterator;

    public RunnableExtObservable(Collection<Integer> collection) {
        this.iterator = collection.iterator();
    }

    /**
     * When executed, iterates over all elements, squares them and emits the results to the
     * registered ExtObservers.
     */
    @Override
    public void run() {
        try {
            while (iterator.hasNext()) {
                sendElementToObservers(squareSlow(iterator.next()));
            }
            sendEndToObservers();
        } catch (Exception e) {
            sendErrorToObservers(e);
        }
    }
}
