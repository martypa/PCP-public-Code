package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import java.util.Collection;
import java.util.Iterator;
import java.util.Observable;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.squareSlow;

public class RunnableGOFObservable extends Observable implements Runnable {

    private Iterator<Integer> iterator;

    public RunnableGOFObservable(Collection<Integer> collection) {
        this.iterator = collection.iterator();
    }

    /**
     * When executed, iterates over all elements, squares them and emits the results to the
     * registered ExtObservers.
     */
    @Override
    public void run() {
        while (iterator.hasNext()) {
            setChanged();
            notifyObservers(squareSlow(iterator.next()));
        }
    }
}

