<%-- 
    Document   : newjsp
    Created on : Apr 15, 2019, 12:21:29 AM
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
        <%
            int i = Integer.parseInt(request.getParameter(num1));
            int j = Integer.parseInt(request.getParameter(num2));
            int k = i+j;
            out.println("Output : "+k);
        %>
    </body>
</html>
