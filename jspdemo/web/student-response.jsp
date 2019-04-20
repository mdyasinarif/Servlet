<%-- 
    Document   : student-response
    Created on : Apr 20, 2019, 1:28:56 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student confiramation titel</title>
    </head>
    <body>
        The student is confirmed : ${param.firstname} ${param.lastname} <br/><br/>
        Country :  ${param.country}<br/><br/>
        Favorite Programing Language : ${param.favariteLanguage}<br/><br/>
        Hobby : 
        <ul>
        <% String[] hobby = request.getParameterValues("hobby");
            for (String temphobby : hobby) {
                    out.println("<li>"+temphobby+"<li/>");
                }
        %>
        </ul>
    </body>
</html>
