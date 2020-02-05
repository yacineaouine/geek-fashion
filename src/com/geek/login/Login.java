package com.geek.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.geek.admin.Admin;
@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter( "txtLogin" );
        String password = request.getParameter( "txtPassword" );
        if ( login == null ) login = "";
        if ( password == null ) password = "";
        HttpSession session = request.getSession( true );
        session.setAttribute( "login", login );
        session.setAttribute( "password", password );
        request.getRequestDispatcher( "/login.jsp" ).forward( request, response );
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter( "txtLogin" );
        String password = request.getParameter( "txtPassword" );
        HttpSession session = request.getSession( true );
        session.setAttribute( "login", login );
        session.setAttribute( "password", password );
        System.out.println( "in the doPost" );
        String email = "";
       
        if ( login.equals("bond") && password.equals( "007" ) ) {
        	 System.out.println( "good ID" );
            session.setAttribute( "isConnected", true );
            Admin admin = new Admin(login);
            admin.doGet(request, response);
            response.setContentType("text/html");  
    		PrintWriter pw=response.getWriter();  
    		  
    		response.sendRedirect("https://yacineaouine.github.io");  
    		  
    		pw.close();  
            //request.getRequestDispatcher( "/admin.jsp" ).forward( request, response );
        } else {
        	 System.out.println( "BAD ID" );
            session.setAttribute( "isConnected", false );
            request.getRequestDispatcher( "/login.jsp" ).forward( request, response );
        }
    }
}