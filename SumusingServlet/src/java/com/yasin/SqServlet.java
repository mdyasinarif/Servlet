/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yasin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Md Yasin Arif
 */
public class SqServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
//        int k = (int) req.getAttribute("k");
//        k= k*k;
//        PrintWriter out = rse.getWriter();
//        out.println("Hello to sq :"+k);

        //     System.out.println("sqCalled"); // pass object
        // pass value 
//        int k = Integer.parseInt(req.getParameter("k"));
//        k = k*k;
//        PrintWriter out = res.getWriter();
//        out.println("Result is "+k);
//        System.out.println("Result called");
// session 
//        HttpSession session = req.getSession();
//       // session.removeAttribute("k");
//        int k = (int) session.getAttribute("k");
//        k = k * k;
//        PrintWriter out = res.getWriter();
//        out.println("Result is " + k);
//        System.out.println("Result called");
//  Cookie
        int k = 0;
        Cookie cookies[] = req.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("k")) {
                k = Integer.parseInt(c.getValue());
            }
        }
    }
}
