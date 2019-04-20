<%-- 
    Document   : funtext
    Created on : Apr 20, 2019, 12:57:51 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="com.yasin.jsp.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Lest have some fun = <%= com.yasin.jsp.FunUtils.makeItLower("Fun Fun Fun")%>
               
    </body>
</html>
