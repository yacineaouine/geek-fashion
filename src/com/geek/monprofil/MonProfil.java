package com.geek.monprofil;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Profil
 */
@WebServlet("/monprofil")
public class MonProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MonProfil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		 	String name = request.getParameter( "name" );
	        String prenom = request.getParameter( "prenom" );
	        String email = request.getParameter( "email" );
	        String mdp = request.getParameter( "mdp" );
	        String adresse = request.getParameter( "adresse" );
	       
	        HttpSession session = request.getSession( true );
  	        session.setAttribute( "name", name );
  	        session.setAttribute( "prenom", prenom );
  	        session.setAttribute( "email", email );
  	        session.setAttribute( "mdp", mdp );
  	        session.setAttribute( "adresse", adresse );
        
	        if ( (email.contains("@gmail.com") || email.contains("@hotmail.fr") || email.contains("@outlook.fr")) &&  mdp.length() >= 8 ) {
	  	        request.getRequestDispatcher( "/monprofil.jsp" ).forward( request, response ); 
	        	}
	        else {
	        	System.out.println("erreur email ou mdp");
	        	 request.getRequestDispatcher( "/profil.jsp" ).forward( request, response ); 
	        	 doGet(request, response);
	        	}
	        }
	        

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
