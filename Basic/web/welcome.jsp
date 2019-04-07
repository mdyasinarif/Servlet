<%-- 
    Document   : second
    Created on : Apr 7, 2019, 6:06:55 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Second JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            out.print("wealcome " + request.getParameter("uname"));
            session.setAttribute("n", request.getParameter("uname"));
        %>
        <a href="second.jsp">Second jsp page</a>
    </body>
</html>
