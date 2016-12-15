package ch.hslu.pcp.reactiveprogramming.asyncprogramming;

public interface ExtObserver<T> {
    void handleElement(T i);

    void handleError(Throwable t);

    void handleEnd();
}
