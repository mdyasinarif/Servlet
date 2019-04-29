<%-- 
    Document   : test
    Created on : Apr 20, 2019, 8:45:48 PM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="staff" value="<%= new java.util.Date()%>"/>
        Time on the server is ${staff}
        
</html>
