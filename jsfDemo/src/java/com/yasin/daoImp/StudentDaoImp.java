/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin.daoImp;

import com.sun.javafx.scene.control.skin.VirtualFlow;
import com.yasin.dao.StudentDao;
import com.yasin.model.Student;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author User
 */
public class StudentDaoImp implements StudentDao {

    List<Student> list = new ArrayList<>();

    public StudentDaoImp() {
        list.add(new Student(1, "Mr Yasin", "Male", "Round-37", new Date(), true, new String[]{"HTML", "Java", "Swing"}, "ok"));
        list.add(new Student(2, "Mr Arif", "Male", "Round-38", new Date(), true, new String[]{"HTML", "Java", "Swing"}, "ok"));
    }

    @Override
    public void add(Student student) {
        list.add(student);
    }

    @Override
    public List<Student> getStudentList() {
        return list;
    }

}
