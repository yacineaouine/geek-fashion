package com.geek.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

import com.geek.business.Article;

public class ArticleDAO extends DAOContext {

	public static int getArticleCount() {
		try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){

			String strSql = "SELECT count(idArticle) FROM T_Articles";
			try ( Statement statement  = connection.createStatement() ) {
				try ( ResultSet resultSet = statement.executeQuery( strSql ) ) {
					resultSet.next();
					return resultSet.getInt( 1 );
				}
			}
			
		} catch ( Exception exception ) {
			
			throw new RuntimeException( exception );
			
		}
	}
	
	public static Article getArticleById( int idArticle ) {
		
		/* Connexion à la base de données */
		Connection connection = null;
		
		try {
			System.out.println("hello try");
			connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword );
			
			/* Ici, nous placerons nos requï¿½tes vers la BDD */

			String strSql = "SELECT * FROM T_Articles WHERE idArticle=?";
			
			try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
				statement.setInt( 1, idArticle );
				try ( ResultSet resultSet = statement.executeQuery() ) {
					resultSet.next();
					return new Article(
							resultSet.getInt( "idArticle" ),
							resultSet.getString( "description" ),
							resultSet.getString( "brand" ),
							resultSet.getString( "unitaryPrice" )
					);
				}
			}
			
		} catch ( Exception exception ) {
			
			throw new RuntimeException( exception );
			
		}
	}
	
	
	public static void updateArticle( Article article ) {
		try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){

			String strSql = "UPDATE T_Articles SET description=?, brand=?, unitaryPrice=? WHERE idArticle=?";
			try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
				statement.setString( 1, article.getDescription() );
				statement.setString( 2, article.getBrand() );
				statement.setString( 3, article.getUnitaryPrice() );
				statement.setInt( 4, article.getIdArticle() );
				statement.executeUpdate();
			}
			
		} catch ( Exception exception ) {
			
			throw new RuntimeException( exception );
			
		}
	}
	
	public static ArrayList<Article> getArticles() {
		ArrayList<Article> articlesList= new ArrayList<Article>();
		try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){

			String strSql = "SELECT * FROM T_Articles";
			try ( Statement statement  = connection.createStatement() ) {
				
				ResultSet resultat = statement.executeQuery( strSql );
				 //On récupère les MetaData
	            ResultSetMetaData resultMeta = resultat.getMetaData();
	            
	            while(resultat.next()){
	            	
	            	  	String description = resultat.getString("Description");
			          	String brand = resultat.getString("Brand");
			          	String price = resultat.getString("UnitaryPrice");
			 
			          	Article article = new Article();
			            article.setDescription(description);
			          	article.setBrand(brand);
			          	article.setUnitaryPrice(price);
			          	articlesList.add(article);
			          	System.out.println(article.getBrand());
	            }
	            resultat.close();
	            statement.close();
			}
			
		} catch ( Exception exception ) {
			
			throw new RuntimeException( exception );
			
		}
		return articlesList;
	}
	
}
