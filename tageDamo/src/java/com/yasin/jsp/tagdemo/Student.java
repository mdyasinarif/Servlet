/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin.jsp.tagdemo;

/**
 *
 * @author Md Yasin Arif
 */
public class Student {
    private String firstName;
    private String lastName;
    private boolean goleCustomer;


    public Student(String firstName, String lastName, boolean goleCustomer) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.goleCustomer = goleCustomer;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean isGoleCustomer() {
        return goleCustomer;
    }

    public void setGoleCustomer(boolean goleCustomer) {
        this.goleCustomer = goleCustomer;
    }
    
    
}
