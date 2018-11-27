/**
 * HSLU I
 * Module PCP
 * ruedi.arnold@hslu.ch
 */

package ch.hslu.pcp.java8_I.lambda;

import ch.hslu.pcp.java8_I.DemoInterface;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.*;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StreamAndLambdaDemos {

    public String doIntro() {
        String result = "";
        IntStream s = IntStream.generate(() -> 5);
        Optional<String> allNames = Arrays.asList("Hansjörg", "Marc", "Roger")
                .stream()
                .filter(name -> name.length() > 4)
                .reduce((a, b) -> a + ", " + b);
        if (allNames.isPresent()) {
            result = allNames.get();
        }
        return result;
    }

    public void doDemo1() {

        // First example of a lambda
        MyBinaryIntOperator intLambda = (x, y) -> x + y;

        // Before Java 8
        MyBinaryIntOperator sameIntLambdaOldSchool = new MyBinaryIntOperator() {
            @Override
            public int calc(int a, int b) {
                return a + b;
            }
        };

        int result = sameIntLambdaOldSchool.calc(Integer.MAX_VALUE, Integer.MAX_VALUE);

        Stream<String> stringStream = Stream.of("a", "b", "c");

        List<String> list = new ArrayList<String>();


        IntStream is = IntStream.range(10, 101);
        // is.forEach(System.out::println);
        System.out.println(" result xx = " + result);

        int x = IntStream.range(0, 11)
                .filter(i -> (i % 3 == 0))
                .map(i -> i + 1)
                .reduce(1, (a, b) -> a * b);
        System.out.println("x = " + x);

        boolean foundAny = IntStream.range(0, 1000)
                .anyMatch(i -> (i > 100));
        System.out.println("foundAny = " + foundAny);

        // Example of a consumer
        Consumer<Account> myLambda =
                (Account a) -> {
                    if (a.balance() < 10_000) a.alert();
                };

    }

    public void doMethodRefDemo() {
        ToIntFunction<String> lengthFunction = String::length;
        UnaryOperator<String> toUpperCaseOperator = String::toUpperCase;
        Predicate<String> isEmptyPredicate = String::isEmpty;
        Supplier<String> newStringSupplier = String::new;
        Consumer<String> printlnConsumer = System.out::println;
        LongSupplier currentMillisSupplier = System::currentTimeMillis;
    }

    public void doDemo2() {
        String[] txt = {"This", "is", "a", "stream", "demo"};
        int i = Arrays.stream(txt).filter(s -> s.length() > 3)
                .mapToInt(s -> s.length())
                .reduce(0, (l1, l2) -> l1 + l2);
        System.out.println("i = " + i);
    }

    int x = IntStream.range(0, 11)
            .filter(i -> (i % 3 == 0))
            .map(i -> i + 1)
            .reduce(1, (a, b) -> a * b);

    public void doTerminalStreamOps() {
        IntStream is = IntStream.range(0, 7)
                .filter(i -> i >= 3);
        is.forEach(i -> System.out.print(i + ", "));
        System.out.println();
        int sum = is.sum(); // 2. operation: problem!!!
    }

    public void doInference() {
        List<Integer> ints = new ArrayList<>();
        ints.add(3);
        ints.parallelStream().map(i -> 2 * i)
                .forEach(j -> ints.add(j)); // No!
    }

    public double doInfiniteStreams() {
        long sampleSize = 1_000_000L;
        double sum = DoubleStream.generate(Math::random)
                .skip(7_000_000L)
                .limit(sampleSize)
                .sum();
        double average = sum / sampleSize;
        System.out.println("average = " + average);
        return average;
    }


    public IntFunction capturingLambdaDemo() {
        int x = 5;

        DemoInterface demoInterface = new DemoInterface() {
            public int doIt() {
                // return x+1;
                return 1;
            }
        };

        // return y -> { x = 6; return x + y;};
        return y -> (x + y);
    }
}
