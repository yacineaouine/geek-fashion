package com.geek.monprofil;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.geek.dao.UserDAO;

/**
 * Servlet implementation class MonProfil
 */
@WebServlet("/MonProfil")
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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setAttribute( "errorMessage", "Veuillez renseigner le bon mot de passe" );	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String myid = request.getParameter( "id" );
		int id = Integer.parseInt(myid);
		 String mdpuser = request.getParameter( "mdpuser" );
        String mdp = request.getParameter( "mdp" );
        	System.out.println(mdpuser);
        //si le mdp correspond au mdp de  la bdd on supprime le compte
        if(mdpuser.contentEquals(mdp)) {
        	System.out.println("on delete");
        	UserDAO.deleteUser(id); 
        	request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
        }
        else doGet(request, response);
	}

}
