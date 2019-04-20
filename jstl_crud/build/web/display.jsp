<%-- 
    Document   : display
    Created on : Apr 18, 2019, 3:34:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELECT Operation</title>
        <script>
            function confirmGo(s,c){
                if(confirm(s)){
                    window.location=c;
                }
            }
        </script>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/jstlcrud" user="root" password="1234"/>
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Product List</caption>
                <tr>
                    <th>Product id</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.id}" /></td>
                        <td><c:out value="${row.pname}" /></td>
                        <td><c:out value="${row.quantity}" /></td>
                        <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to Delete this record ?','deletedb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
         <a href="index.jsp">Go Home</a>
    </center>
    </body>
</html>
