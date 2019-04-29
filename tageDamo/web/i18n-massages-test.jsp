<%-- 
    Document   : i18n-massages-test
    Created on : Apr 24, 2019, 1:11:18 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<c:set var="theLocal" value="${not empty param.theLocal ? param.theLocal : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${theLocal}"/>
<fmt:setBundle basename="com.yasin.jsp.i18n.resoures.myLabels"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="i18n-massages-test.jsp?theLocal=en_US">English (US)</a>
        <a href="i18n-massages-test.jsp?theLocal=en_ES">Spanish (ES)</a>
        <a href="i18n-massages-test.jsp?theLocal=de_DE">Germane (DE)</a>
        <hr/>
        <fmt:message key="label.greeting"/><br/><br/>
        <fmt:message key="label.firstname"/><i>Yasin</i><br/><br/>
        <fmt:message key="label.lastname"/><i>Arif</i><br/><br/>
        <fmt:message key="label.welcome"/><br/>
    </body>
</html>
