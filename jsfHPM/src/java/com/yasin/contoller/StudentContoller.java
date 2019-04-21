/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin.contoller;

import com.yasin.entity.Student;
import com.yasin.service.StudentService;
import com.yasin.serviceImp.StudentServiceImp;
import java.util.ArrayList;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

/**
 *
 * @author User
 */
@ManagedBean
public class StudentContoller {

    private Student student;
    private List<Student> students;
    private StudentService service;
    private String message;
    

    public void save() {
        service = new StudentServiceImp();
        service.saveStudent(student);
        FacesContext.getCurrentInstance().addMessage("MessageId", new FacesMessage(FacesMessage.SEVERITY_INFO,"Successfull","You did something!"));
        System.out.println("Successfully save !");
    }
public void update(){
    service = new StudentServiceImp();
    service.updateStudent(student);
    FacesContext.getCurrentInstance().addMessage("MessageIdUp", new FacesMessage(FacesMessage.SEVERITY_INFO,"Update Successfull!", "You did something!"));
     System.out.println("Successfully update !");

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

    public List<Student> getStudents() {
        students = new ArrayList<>();
        service = new StudentServiceImp();
        students = service.getAllStudents();
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

     public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
