package com.geek.pages;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.geek.dao.ArticleDAO;
import com.geek.business.Article;
import com.geek.dao.DAOContext;
/**
 * Servlet implementation class Accessoires
 */
@WebServlet("/Accessoires")
public class Accessoires extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	  @Override
		public void init() throws ServletException {
			DAOContext.init( this.getServletContext() );
		}
	    
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Article> myArticles = ArticleDAO.getArticles();
		request.setAttribute("myArticles", myArticles);
		System.out.println(myArticles);
		request.getRequestDispatcher("accessoires.jsp").forward( request, response );
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
