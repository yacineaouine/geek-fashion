package com.geek.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

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
		try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ){
			System.out.println( "connection to the database" );
			String strSql = "SELECT * FROM T_Articles WHERE idArticle=?";
			try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
				statement.setInt( 1, idArticle );
				try ( ResultSet resultSet = statement.executeQuery() ) {
					resultSet.next();
					return new Article(
							resultSet.getInt( "idArticle" ),
							resultSet.getString( "description" ),
							resultSet.getString( "brand" ),
							resultSet.getDouble( "unitaryPrice" )
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
				statement.setDouble( 3, article.getUnitaryPrice() );
				statement.setInt( 4, article.getIdArticle() );
				statement.executeUpdate();
			}
			
		} catch ( Exception exception ) {
			
			throw new RuntimeException( exception );
			
		}
	}
	
}
