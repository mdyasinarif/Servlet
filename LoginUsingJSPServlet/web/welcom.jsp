<%-- 
    Document   : welcom
    Created on : Apr 16, 2019, 5:48:14 AM
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
        <%
            response.setHeader("Cache-Control", "no-cache","no-store",must-revalidate);
            response.setHeader("Proges", "no-cache");
            response.setHeader("Expires", 0);
            
            if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.jsp");
            }
        %>
        Welcome ${username}
        <a href="videos.jsp">videos</a>
        <form action="Logout">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
