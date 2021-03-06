/**
* HSLU I
* Module PCP
* ruedi.arnold@hslu.ch
*/

package ch.hslu.pcp.java8_I.lambda;

import java.util.Collections;
import java.util.List;
import java.util.Comparator;

public class ComparatorDemo {

  public static void main(String[] args) {
   
    List<Person> personList = Person.createShortList();
  
    // Sort with Inner Class
    Collections.sort(personList, new Comparator<Person>(){
      @Override
      public int compare(Person p1, Person p2){
        return p1.getSurName().compareTo(p2.getSurName());
      }
    });
    
    //TODO: add unit-tests for the following code! (Ruedi 9.11.16)
    
    System.out.println("=== Sorted Asc SurName ===");
    for(Person p:personList){
    }
    
    // Use Lambda instead
    
    // Print Asc
    System.out.println("=== Sorted Asc SurName ===");
    Collections.sort(personList, (p1, p2) -> p1.getSurName().compareTo(p2.getSurName()));
    
    Comparator<Person> c = (Person p1, Person p2) -> p1.getSurName().compareTo(p2.getSurName());
    BiToIntFunction<Person> b = (Person p1, Person p2) -> p1.getSurName().compareTo(p2.getSurName());
    
    // Print Desc
    System.out.println("=== Sorted Desc SurName ===");
    Collections.sort(personList, (p1,  p2) -> p2.getSurName().compareTo(p1.getSurName()));

    for(Person p:personList){
    }
    
  }
}