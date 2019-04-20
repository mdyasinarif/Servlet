/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Md Yasin Arif
 */
public class AddServlet extends HttpServlet{
    //anouther 2 methods doget dopost
    public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        int i = Integer.parseInt(req.getParameter("num1"));
        int j = Integer.parseInt(req.getParameter("num2"));
        int k = i+j;
       
        //rse.getWriter().println("Result "+k);
        
        //RequestDispatcher
//        req.setAttribute("k", k);
//        RequestDispatcher rd = req.getRequestDispatcher("sq");
//        rd.forward(req, rse);
        
         //sendRedirect
        
      //  res.sendRedirect("sq");  // pass object
         
         
      //   res.sendRedirect("sq?k="+k);// pass value
         //session
         
//         HttpSession session = req.getSession();
//         session.setAttribute("k", k);
//         res.sendRedirect("sq");
        

//  Cookie
        Cookie cookie = new Cookie("k", k+"");
        res.addCookie(cookie);
    }
}
