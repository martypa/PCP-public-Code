/**
* HSLU T&A
* Module PCP
* ruedi.arnold@hslu.ch
* 
* Example code from https://github.com/oreillymedia/functional_thinking
*/

package ch.hslu.pcp.java8_II.numberClassifierExample;

import static java.lang.Math.sqrt;
import java.util.HashSet;
import java.util.Set;

import java.util.HashMap;
import java.util.Map;

public class NumberClassifierImperativeOptimized {
private final int _number;
    private final Map<Integer, Integer> _cache;

    public NumberClassifierImperativeOptimized(int targetNumber) {
        _number = targetNumber;
        _cache = new HashMap<>();
    }

    private boolean isFactor(int candidate) {
        return _number % candidate == 0;
    }

    private Set<Integer> getFactors() {
        Set<Integer> factors = new HashSet<>();
        factors.add(1);
        factors.add(_number);
        for (int i = 2; i <= sqrt(_number); i++)  //<1>
            if (isFactor(i)) {
                factors.add(i);
                factors.add(_number / i);
            }
        return factors;
    }

    private int aliquotSum() {
        int sum = 0;
        for (int i : getFactors())
            sum += i;
        return sum - _number;
    }

    private int cachedAliquotSum() {
        if (_cache.containsKey(_number))
            return _cache.get(_number);
        else {
            int sum = aliquotSum();
            _cache.put(_number, sum);
            return sum;
        }
    }

    public boolean isPerfect() {
        return cachedAliquotSum() == _number;
    }

    public boolean isAbundant() {
        return cachedAliquotSum() > _number;
    }

    public boolean isDeficient() {
        return cachedAliquotSum() < _number;
    }
}
