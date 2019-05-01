/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tag;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author User
 */
public class SayHelloTag extends SimpleTagSupport{

    @Override
    public void doTag() throws JspException, IOException {
        super.doTag(); 
        getJspContext().getOut().write("Hello, How Are You?");
    }
    
}
