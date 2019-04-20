<%-- 
    Document   : updatedb
    Created on : Apr 18, 2019, 4:56:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UpdateDb Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/jstlcrud" user="root" password="1234"/>
        <sql:update dataSource="${dbsource}" var="count">
            update product set pname=?,quantity=? where id='${param.id}'
            <sql:param value="${param.pname}"/>
            <sql:param value="${param.qty}"/>
        </sql:update>
        <c:if test="${count>=1}">
             <a href="display.jsp">Go display</a> 
            <font size="5" color='green'> Congratulations ! Data update successfully.</font>
        </c:if>
            
    </body>
</html>
