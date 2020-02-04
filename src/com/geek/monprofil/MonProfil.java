package com.geek.monprofil;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;

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
		
       
        
	       
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub

	 	String name = request.getParameter( "name" );
        String prenom = request.getParameter( "prenom" );
        String date = request.getParameter( "date" );
        String email = request.getParameter( "email" );
        String mdp = request.getParameter( "mdp" );
        String adresse = request.getParameter( "adresse" );
       
        String message = null ;
       
    
      

        //convert String to LocalDate
        LocalDate birthDate = LocalDate.parse(date);
        LocalDate currentDate = LocalDate.now();
        
        int years = this.calculateAge(birthDate, currentDate);
        
        HttpSession session = request.getSession( true );
	        session.setAttribute( "name", name );
	        session.setAttribute( "prenom", prenom );
	        session.setAttribute( "date", years );
	        session.setAttribute( "email", email );
	        session.setAttribute( "mdp", mdp );
	        session.setAttribute( "adresse", adresse );
    
        if ( (email.contains("@gmail.com") || email.contains("@hotmail.fr") || email.contains("@outlook.fr")) &&  mdp.length() >= 8 ) {
        	
        	 if(years >= 18)  request.getRequestDispatcher( "/monprofil.jsp" ).forward( request, response ); 
        	 else  message = "Vous devez avoir plus de 18ans";request.setAttribute("message", message);request.getRequestDispatcher( "/profil.jsp" ).forward( request, response ); doGet(request, response);
        
        	}
        else {
        	System.out.println("erreur email ou mdp");
        	
        	 doGet(request, response);
        	}
        
	}
	
	protected int calculateAge(
			  LocalDate birthDate,
			  LocalDate currentDate) {
			   //validate inputs ...
			    return Period.between(birthDate, currentDate).getYears();
			}

}
