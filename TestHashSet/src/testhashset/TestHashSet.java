/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testhashset;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Md Yasin Arif
 */
public class TestHashSet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
//        Set<String> set = new HashSet<String>();
//        set.add("London");
//        set.add("Paris");
//        set.add("New York");
//        set.add("Beijing");
//        set.add("New York");
//        System.out.println(set);
//        for(String s: set){
//            System.out.println(s.toUpperCase()+"");
//        }


        Set<String> set1 = new HashSet<String>();
        set1.add("London");
        set1.add("Paris");
        set1.add("New York");
        set1.add("Beijing");
        System.out.println("Set1 is " + set1);
        System.out.println(set1.size() + " element in setl");
        //remove
        set1.remove("London");
        System.out.println("\n set1 is " + set1);
        //add set2
        Set<String> set2 = new HashSet<String>();
            set2.add("London");
            set2.add("Shanghai");
            set2.add("Paris");
            System.out.println("\n set2 is " +set2);
            System.out.println(set2.size() +" element in set2");
            System.out.println("\n Is Taipei in set2? " + set2.contains("Taipei"));
          set1.addAll(set2);
            System.out.println("\n after adding set2 to set1, set1 is "+ set1);
          set1.removeAll(set2);
            System.out.println(set1);
        set1.retainAll(set2);
            System.out.println(set1);
    }
    
}
