package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

import static ch.hslu.pcp.reactiveprogramming.util.Helpers.*;

public class SquareExtObservableObserver extends ExtObservableObserver<Integer, Integer>{

    @Override
    public void handleElement(Integer i) {
        print("sqaure");
        sendElementToObservers(squareSlow(i));
    }

    @Override
    public void handleError(Throwable t) {
        print("intermediate error");
        sendErrorToObservers(t);
    }

    @Override
    public void handleEnd() {
        print("intermediate end");
        sendEndToObservers();
    }
}
