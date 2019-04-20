<%-- 
    Document   : hello
    Created on : Apr 20, 2019, 12:36:35 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        current time <%= new java.util.Date() %><br/>
        converting a string to UpperCase <%= new String("hell world").toUpperCase()%><br/>
        25 multipiied bt 4 equals <%= 25*4 %><br/>
        is 75 less then 69? <%= 75<69 %><br/>
        
        <%
        for (int i = 0; i <= 10; i++) {
                out.println("yasin "+i+"<br/>");
            }
        %>
        
        
    </body>
</html>
