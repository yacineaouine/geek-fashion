package com.geek.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.geek.beans.Personne;

/**
 * Servlet implementation class Help
 */
@WebServlet("/help")
public class Help extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Help() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/help.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			

		 String montant = request.getParameter( "montant" );
		 
		 double d =  Double.parseDouble(montant);
	        String devise1 = request.getParameter( "devise1" );
	        String devise2 = request.getParameter( "devise2" );
	        double resultat = 0;
	        
	        if ( devise1.equals("dollars") && !devise1.equals(devise2))  resultat = d * 1.2;
	        else if ( devise1.equals("euro") && !devise1.equals(devise2)) resultat = d*0.8;
	        else resultat = d*1;
	        
	        request.setAttribute( "montant", montant );
	        request.setAttribute( "resultat", resultat );
	        request.setAttribute( "devise1", devise1 );
	        request.setAttribute( "devise2", devise2 );
	        request.setAttribute( "resultat", resultat );
	        
	        doGet(request, response);
	}

}
