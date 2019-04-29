<%-- 
    Document   : forEach-sample-test
    Created on : Apr 20, 2019, 9:04:01 PM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
       String[] cities = {"japan","Bd","india"};
       pageContext.setAttribute("myCity", cities);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach var="tempCity" items="${myCity}">
            ${tempCity}<br/>
        </c:forEach>
    </body>
</html>
