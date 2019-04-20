<%-- 
    Document   : core_remove
    Created on : Apr 17, 2019, 6:50:27 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${param.expert != null}">
<c:remove var="level" scope="session"/>
</c:if>
<!DOCTYPE html>
<html>
    
    <body>
        Your label is<c:out value="${lebel}" default="Expert"/>
        <c:choose>
            <c:when test="${level != null}">
                <p/>Here are the things you need to do...
            </c:when>
            <c:otherwise>
                <p/> Your the expert you figure it out ..
            </c:otherwise>
        </c:choose>
    </body>
</html>
