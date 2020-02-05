package com.geek.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import com.geek.business.User;

import java.sql.Statement;



public class UserDAO extends DAOContext {
	
	

	public static User isValidLogin( String login, String password ) throws IOException, ClassNotFoundException {
		Properties props = new Properties();
		try (FileInputStream fis = new FileInputStream("C:/Users/POSTE-CA-6/eclipse-workspace/Geek&Fashion/conf.properties")) {
			props.load(fis);
			System.out.println("hello file");
		}
			
		Class.forName(props.getProperty("jdbc.driver.class"));
//		String url = props.getProperty("jdbc.url");
//		String login1 = props.getProperty("jdbc.login");
//		String password1 = props.getProperty("jdbc.password");
		
		try ( Connection connection = DriverManager.getConnection( dbURL, dbLogin, dbPassword ) ) {
			//String strSql = "SELECT * FROM T_Users WHERE login='" + login + "' AND password='" + password + "'";
			String strSql = "SELECT * FROM T_Users WHERE login=? AND password=?";
			System.out.println(strSql);
			try ( PreparedStatement statement  = connection.prepareStatement( strSql ) ) {
				statement.setString( 1, login );
				statement.setString( 2, password );
				try ( ResultSet resultSet = statement.executeQuery() ) {
					if ( resultSet.next() ) {
						return new User(
								resultSet.getInt( "idUser" ),
								resultSet.getString( "login" ),
								resultSet.getString( "password" ),
								resultSet.getInt( "connectionNumber" )
						);
					} else {
						return null;
					}
				}
			}
		} catch ( Exception exception ) {
			throw new RuntimeException( exception );
		}
	}
	
}
