package com.geek.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import com.geek.business.User;

import java.sql.Statement;



public class UserDAO extends DAOContext {
	
	

	public static User isValidLogin( String login, String password ) throws IOException, ClassNotFoundException {
		
		/* Connexion à la base de données */
		String url = "jdbc:mysql://localhost:3306/webstore";
		String utilisateur = "root";
		String motDePasse = "";
		Connection connexion = null;
		try {
		    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );

		    /* Ici, nous placerons nos requêtes vers la BDD */
		    /* ... */
		    String strSql = "SELECT * FROM T_Users WHERE login=? AND password=?";
			System.out.println(strSql);
			try ( PreparedStatement statement  = connexion.prepareStatement( strSql ) ) {
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

		} catch ( SQLException e ) {
		    /* Gérer les éventuelles erreurs ici */
			System.out.println(e);
		} finally {
		    if ( connexion != null )
		        try {
		            /* Fermeture de la connexion */
		            connexion.close();
		        } catch ( SQLException ignore ) {
		            /* Si une erreur survient lors de la fermeture, il suffit de l'ignorer. */
		        }
		}
		return null;
		

	}
	
}
