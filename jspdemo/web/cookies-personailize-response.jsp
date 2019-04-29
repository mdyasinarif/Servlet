<%-- 
    Document   : cookies-personailize-response
    Created on : Apr 20, 2019, 12:29:45 PM
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
            // read form data
            String favLan = request.getParameter("favoriteLanguage");

// creat the cookie
            Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLan);

// set the lifef sapan total number of seconds
            theCookie.setMaxAge(60 * 60 * 24 * 365);
            // send cookie to browser
            response.addCookie(theCookie);
        %>
    </body>
</html>
