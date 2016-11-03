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
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongSupplier;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.function.UnaryOperator;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;

public class StreamTest {

    public static void main(String[] args) {
        doIntro();
        doDemo2();
        doDemo1();
        // doTerminalStreamOps();
        // doInference();
        doInfiniteStreams();
        
        DemoInterface.getEight();
        DemoInterface rdi = new DemoInterface() {};
        rdi.getLuckyNumber();
        capturingLambdaDemo();
    }
    
    public static void doIntro() {
        String result = "";
        IntStream s = IntStream.generate(() -> 5);
        Optional<String> allNames = Arrays.asList("Hansjörg", "Marc", "Roger")
                                .stream()
                                .filter(name -> name.length() > 4)
                                .reduce((a, b) -> a+", "+b);
        if (allNames.isPresent()) { result = allNames.get(); }
        System.out.println("Hello "+result);
    }
    
    public static void doDemo1() {
        
        // First example of a lambda
        MyBinaryIntOperator intLambda = (int x, int y) -> { return x+y; };
        
        // Before Java 8
        MyBinaryIntOperator sameIntLambdaOldSchool = new MyBinaryIntOperator() {
            @Override
            public int calc(int a, int b) {
                return a+b;
            }
        };
        
        IntStream is = IntStream.range(10, 101);
        // is.forEach(System.out::println);
        
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
                (Account a) -> {if (a.balance() < 10_000) a.alert();};
        
    }
    
    public void doMethodRefDemo() {
        ToIntFunction<String> lengthFunction = String::length;
        UnaryOperator<String> toUpperCaseOperator = String::toUpperCase;
        Predicate<String> isEmptyPredicate = String::isEmpty;
        Supplier<String> newStringSupplier = String::new;
        Consumer<String> printlnConsumer = System.out::println;
        LongSupplier currentMillisSupplier = System::currentTimeMillis;
    }
    
    public static void doDemo2() {
        String[] txt = { "This", "is", "a", "stream", "demo"};
        int i = Arrays.stream(txt).filter(s -> s.length() > 3)
                          .mapToInt(s -> s.length())
                          .reduce(0, (l1, l2) -> l1 + l2);
        System.out.println("i = "+i);
    }
    
    public static void doTerminalStreamOps() {
        IntStream is = IntStream.range(0, 7)
                                .filter(i -> i >= 3);
        is.forEach(i -> System.out.print(i + ", "));
        System.out.println();
        int sum = is.sum(); // 2. operation: problem!!!
    }
    
    public static void doInference() {
        List<Integer> ints = new ArrayList<>();
        ints.add(3);
        ints.parallelStream().map(i -> 2*i) 
            .forEach(j -> ints.add(j)); // No!
    }
    
    public static void doInfiniteStreams() {
        long sampleSize = 1_000L;
        double sum = DoubleStream.generate(Math::random)
                                 .skip(7_000_000L)
                                 .limit(sampleSize)
                                 .sum();
        System.out.println("average = " + (sum / sampleSize));

        
    }
    
    public static IntFunction capturingLambdaDemo () {
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
