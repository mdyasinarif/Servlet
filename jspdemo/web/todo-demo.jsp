<%-- 
    Document   : to-do-demo
    Created on : Apr 20, 2019, 2:06:24 AM
    Author     : Md Yasin Arif
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!--step 1 : create HTML from-->
        <form action="todo-demo.jsp">
            Add new item : <input type="text" name="theItem"/>
            <input type="submit" value="Submit"/>
        </form>
        <br/>
 
        
        <!--step 2 : Add new item to " To Do List-->
        
        
        <% 
//            get the To Do items from the sessions
            List<String> items = (List<String>)session.getAttribute("myToDoList");
//             if the to do items doesn't  exits, then create a new one
            if (items == null) {
                    items = new ArrayList<String>();
                    session.setAttribute("myToDoList", items);
                }
//            see if there is form data to add

                String theItem = request.getParameter("theItem");
                if (theItem != null) {
                        items.add(theItem);
                    }
        %>
         <!--step 3 ; Display all "To Do " item from session-->
        <b> To List Items : <b/><br/>
        <ol>
            <%
                for (String temp : items) {
                        out.println("<li>"+temp+"</li>");
                    }
            %>
        </ol>
    </body>
</html>
