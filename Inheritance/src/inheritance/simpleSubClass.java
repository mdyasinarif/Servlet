/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inheritance;

import java.util.Date;

/**
 *
 * @author Md Yasin Arif
 */
public class simpleSubClass extends SimpleSuperClass{
    private double radius;

    public simpleSubClass() {
    }
    

    public simpleSubClass(double radius) {
        this.radius = radius;
    }

    public simpleSubClass(double radius, String color, boolean filled) {
               this.radius = radius;
               setColor(color);
               setFilled(filled);
    }

    private String setColor(String color) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return color;
    
    }

    public double getRadius() {
        return radius;
    }

    
    
    
}
