/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testtreeset;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 *
 * @author Md Yasin Arif
 */
public class TestTreeSet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Set<String> se = new HashSet<>();
            se.add("London");
            se.add("Paris");
            se.add("New York");
            se.add("Beijing");
            se.add("New York");
        TreeSet<String> ts = new TreeSet<>(se);
            System.out.println("Sorted tree set : " + ts);
    //method
    
        System.out.println("first() " +ts.first());
        System.out.println("last() " +ts.last());
        System.out.println("headSet() " +ts.headSet("New York"));
        System.out.println("tailSet() " +ts.tailSet("New York"));
        //nevigator
        
    }
    
}
