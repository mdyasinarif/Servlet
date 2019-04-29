<%-- 
    Document   : cookies-homepage
    Created on : Apr 20, 2019, 12:37:20 PM
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
        <!--read the favaoite programming ;anguage cookie-->
        <%
            //           the default if there are no coolies
            String favLang = "Java";
            //    get the cookies from the browser request
            Cookie[] theCookies = request.getCookies();
            //find our favorite language cookie
            if (theCookies != null) {
                for (Cookie tempCookie : theCookies) {
                    if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
                        favLang = tempCookie.getValue();
                    }
                }
            }
        %>

        <!--now show a personalized page use the favLang--> 
        <!--show newe books for this lang-->
        <h4>New Book for <%= favLang%></h4>
        <ul>
            <li>blah blah</li>
            <li>blah blah</li>
            <li>blah blah</li>
        </ul>
        <h4>Hot Job for <%= favLang%></h4>
        <ul>
            <li>blah blah</li>
            <li>blah blah</li>
            <li>blah blah</li>
        </ul>
        <hr>
        <a href="cookie-personalize.html">Personalized this page</a>
    </body>
</html>
