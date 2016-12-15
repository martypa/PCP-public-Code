package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.print;

public class PrintExtObserver<T> implements ExtObserver<T> {
    @Override
    public void handleElement(T e) {
        print("Element " + e);
    }

    @Override
    public void handleError(Throwable t) {
        print("Error: " + t.getMessage());
    }

    @Override
    public void handleEnd() {
        print("End");
    }
}
