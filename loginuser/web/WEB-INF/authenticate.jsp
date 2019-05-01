<%-- 
    Document   : authenticate
    Created on : Apr 28, 2019, 4:13:01 AM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty param.userName or empty param.password}">
            <c:redirect url="login.jsp">
                <c:param name="errMsg" value="Please Enter UserName and Password"></c:param>
            </c:redirect>
        </c:if>

        <c:if test="${!empty param.userName and !empty param.passeord}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="mysql://localhost:3306/jstllogin" user="root" password="ccs123"/>
            <s:query dataSource="${ds}" var="selectQ">
                select count(*) as kns from users where userName ='${param.userName}' and password='${param.password}'
            </s:query>
            <c:forEach items="${selectQ.rows}" var="r">
                <c:choose>
                    <c:when test="{r.kns gt 0}">
                        <c:set scope="session" var="loginUser" value="${param.userName}"></c:set>
                        <c:redirect url="index.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="login.jsp"></c:redirect>
                        <c:param name="errMsg" value="userName/password does not match"/>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>
    </body>
</html>
