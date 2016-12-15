package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import java.util.ArrayList;
import java.util.List;

/**
 * Represents a source and emits elements of type T and informs their ExtObservers explicitly
 * about errors and the end of the sequence of elements.
 *
 * @param <T>
 */
public class ExtObservable<T> {

    private List<ExtObserver<T>> observers = new ArrayList<>();

    /**
     * Register an ExtObserver for signals.
     *
     * @param o
     */
    public void addObserver(ExtObserver<T> o) {
        this.observers.add(o);
    }

    /**
     * Registers the ExtObservableObserver and returns an ExtObservable. This method
     * can be used to chain multiple processing stages in a fluent programming style.
     *
     * @param o
     * @param <O>
     * @return
     */
    public <O> ExtObservable<O> addObserver(ExtObservableObserver<T, O> o) {
        this.observers.add(o);
        return o;
    }

    protected void sendElementToObservers(T i) {
        for (ExtObserver<T> o : observers) {
            o.handleElement(i);
        }
    }

    protected void sendErrorToObservers(Throwable t) {
        for (ExtObserver<T> o : observers) {
            o.handleError(t);
        }
    }

    protected void sendEndToObservers() {
        for (ExtObserver<T> o : observers) {
            o.handleEnd();
        }
    }

}
