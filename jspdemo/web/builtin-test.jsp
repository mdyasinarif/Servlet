<%-- 
    Document   : builtin-test
    Created on : Apr 20, 2019, 1:05:50 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>jsp Built In object</h1>
        Request user agent : <%= request.getHeader("user-Agent")%>
        <br/><br/>
        Request language : <%= request.getLocale()%>
                
                
    </body>
</html>
