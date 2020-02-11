package com.geek.dao;

import javax.servlet.ServletContext;

public class DAOContext {
	
	protected static String dbURL;
	protected static String dbLogin;
	protected static String dbPassword;
	
	
	public static void init( ServletContext context ) {
		System.out.println("je suis ds le nit daocontext");
		try {
			
			Class.forName( context.getInitParameter( "JDBC_DRIVER" ) );
			dbURL = context.getInitParameter( "JDBC_URL" );
			dbLogin = context.getInitParameter( "JDBC_LOGIN" );
			dbPassword = context.getInitParameter( "JDBC_PASSWORD" );
			
		} catch( Exception exception ) {
			
			exception.printStackTrace();
			
		}
	}
	
	
	
}
