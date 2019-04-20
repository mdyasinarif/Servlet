/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Md Yasin Arif
 */
public class Myservlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        PrintWriter out = res.getWriter();
        out.print("Hi ");

//        ServletContext ctx = getServletContext();
//        String str1 = ctx.getInitParameter("name");
//        String str2 = ctx.getInitParameter("Phone");
//        out.println(str1+str2);
        ServletConfig cg = getServletConfig();
        String str1 = cg.getInitParameter("name");
        out.println(str1);
    }
}
