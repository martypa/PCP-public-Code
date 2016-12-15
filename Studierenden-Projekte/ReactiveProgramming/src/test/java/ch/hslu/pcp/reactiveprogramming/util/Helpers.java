package ch.hslu.pcp.reactiveprogramming.util;

public class Helpers {

    private static long startmilis = 0;
    public static final boolean SHOW_MILIS = true;

    public static void start() {
        startmilis = System.currentTimeMillis();
        print("Start", false);
    }

    public static void print(Object x) {
        print(x, SHOW_MILIS);
    }

    public static void print(Object x, boolean showmilis) {
        String ms = " after " + (System.currentTimeMillis() - startmilis) + "ms";
        if (showmilis == false) {
            ms = "";
        }
        System.out.println(x + " on " + Thread.currentThread().getName() + ms);
    }

    public static void sleep(int milis) {
        try {
            Thread.sleep(milis);
        } catch (InterruptedException ex) {
            new RuntimeException("Interrupted Exception");
        }
    }

    public static Integer squareSlow(Integer x) {
        sleep(1000);
        return x * x;
    }

    public static void throwRun() {
        throw new RuntimeException("Demo Runtime Exception");
    }
}
