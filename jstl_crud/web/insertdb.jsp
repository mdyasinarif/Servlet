<%-- 
    Document   : insertdb
    Created on : Apr 18, 2019, 3:52:53 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JINSERT Operation</title>
    </head>
    <body>
        <c:if test="${empty param.pname or empty param.qty}">
            <c:redirect url="insert.jsp">
                <c:param name="errMsg" value="Please Enter Product & Quentity"/>
            </c:redirect>  
        </c:if>
        
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/jstlcrud" user="root" password="1234"/>
        
        <sql:update dataSource="${dbsource}" var="result">
            insert into product(pname,quantity)values(?,?);
            <sql:param value="${param.pname}"></sql:param>
            <sql:param value="${param.qty}"></sql:param>
        </sql:update>
           
            <c:if test="${result>=1}">
                <c:redirect url="insert.jsp">
                    <c:param name="susMsg" value="Congratulations ! Data inserted successfully."/>
                </c:redirect>
            </c:if>
        
    </body>
</html>
