package com.geek.signin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.geek.admin.Admin;

import com.geek.business.CatalogBrowser;
import com.geek.business.User;
import com.geek.dao.UserDAO;

import com.geek.dao.DAOContext;

@WebServlet("/signin")
public class SignIn extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
	public void init() throws ServletException {
		DAOContext.init( this.getServletContext() );
	}
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    	
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	 //SE CONNECTER
        String loginC = request.getParameter( "txtLogin" );
		String passwordC = request.getParameter( "txtPassword" );
		
		request.setAttribute( "loginC", loginC );
		request.setAttribute( "passwordC", passwordC );
		
		User connectedUser = null;
		try {
			connectedUser = UserDAO.isValidLogin( loginC, passwordC );
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if ( connectedUser != null ) {
			
			HttpSession session2 = request.getSession( true );
			session2.setAttribute( "connectedUser", connectedUser );
			session2.setAttribute( "catalogBrowser", new CatalogBrowser() );
			request.getRequestDispatcher( "/monprofil.jsp" ).forward( request, response );
		
		} else {
		
			request.setAttribute( "errorMessage", "Bad identity" );			
			request.getRequestDispatcher( "/profil.jsp" ).forward( request, response );
			
		}
        
       
		
    }
    
    protected void test()
            throws ServletException, IOException {
        
    	System.out.println("jeteste");
    }
    
    
}