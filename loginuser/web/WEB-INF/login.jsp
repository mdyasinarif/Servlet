<%-- 
    Document   : login
    Created on : Apr 28, 2019, 3:18:33 AM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to our app</title>
    </head>
    <body>
        <h1>Please login</h1>
        <form action="authenticate.jsp">
            userName : <input type="text" name="userName"/><br>
            password : <input type="password" name="password"/><br>
            <input type="submit" value="Login"/>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
        </c:if>
        </font>
    </body>
</html>
