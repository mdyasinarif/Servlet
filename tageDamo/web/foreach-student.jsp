<%-- 
    Document   : foreach-student
    Created on : Apr 20, 2019, 9:12:50 PM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*,com.yasin.jsp.tagdemo.Student"%>
<!DOCTYPE html>
<%
     List<Student> data = new ArrayList<>();
     data.add(new Student("yasin", "arif", false));
     data.add(new Student("Tawhida", "sharif", true));
     data.add(new Student("Shafri", "mohon", false));
     pageContext.setAttribute("myStudent", data);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>goleCustomer</th>
            </tr>
            
        <c:forEach var="tempStudent" items="${myStudent}">
            <tr>
            <td>${tempStudent.firstName}</td> 
            <td>${tempStudent.lastName}</td>
            <td>${tempStudent.goleCustomer}</td>
            </tr>
        </c:forEach>
            
        </table>
    </body>
</html>
