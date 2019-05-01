/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin.contoller;

import com.yasin.dao.StudentDao;
import com.yasin.daoImp.StudentDaoImp;
import com.yasin.model.Student;
import java.util.List;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author User
 */
@ManagedBean
public class StudentContoller {

    private Student student;
    private List<Student> studentList;
    private StudentDao studentDao;

    public void saveStudent() {
        studentDao = new StudentDaoImp();
        studentDao.add(student);
        System.out.println("Sav successfully");
    }

    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getStudentList() {
        studentDao = new StudentDaoImp();
        studentList = studentDao.getStudentList();
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    

}
