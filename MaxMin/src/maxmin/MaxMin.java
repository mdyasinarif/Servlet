/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maxmin;

import java.util.Scanner;

/**
 *
 * @author Md Yasin Arif
 */
public class MaxMin {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner input = new Scanner(System.in);
        int[] inputs = new int[3];
        int max = 0;
        int min = 0;
            for(int i = 0; i < inputs.length; i++){
            System.out.println("Enter " + (i+1) + " th value");
                inputs[i] = input.nextInt();
         if(i == 0){
             max = inputs[0];
             min = inputs[0];
         
         }       
         if(max < inputs[i]){
             max = inputs[i];
         }
         if(min  > inputs[i]){
             min = inputs[i];
         }
        }
        System.out.println("Maximum Number : " + max + " Minimum number " + min);
    
    }
    
}
