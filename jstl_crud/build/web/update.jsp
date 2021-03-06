<%-- 
    Document   : update
    Created on : Apr 18, 2019, 4:40:51 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
       <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/jstlcrud" user="root" password="1234"/>
        
        <sql:query dataSource="${dbsource}" var="result">
            select * from product where id=?;
            <sql:param value="${param.id}"/>
        </sql:query>

            <form action="updatedb.jsp" method="post">
            <table>
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="id"/>
                            <input type="text" value="${row.pname}" name="pname"/></td>
                        <td><input type="text" value="${row.quantity}" name="qty"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>

                </c:forEach>

            </table>
        </form>
        <a href="display.jsp">Go Display</a>
    </body>
</html>
