/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoller;

import com.pojo.Student;

/**
 *
 * @author User
 */
public class StudentContoller {
    private Student sutdent;

    public Student getSutdent() {
        if (sutdent == null) {
            sutdent = new Student();
        }
        return sutdent;
    }

    public void setSutdent(Student sutdent) {
        this.sutdent = sutdent;
    }
    
}
