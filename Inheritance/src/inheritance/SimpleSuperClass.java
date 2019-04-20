/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inheritance;

import java.util.Date;


public class SimpleSuperClass {
    private String color ="White";
    private boolean filled;
 private Date datecreated;

    public SimpleSuperClass() {
    }

    public SimpleSuperClass(String color,boolean filled, Date datecreated) {
        this.color =color;
        this.filled = filled;
        this.datecreated = datecreated;
    }

    public void setcolor(String color) {
        this.color = color;
    }

    public void setFilled(boolean filled) {
        this.filled = filled;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }

    public String getcolor() {
        return color;
    }

    public boolean isFilled() {
        return filled;
    }

    public Date getDatecreated() {
        return datecreated;
    }
    
   
    
}
