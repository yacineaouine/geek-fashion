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

		/* Connexion � la base de donn�es */

		Connection connexion = null;
		try {
			connexion = DriverManager.getConnection( dbURL, dbLogin, dbPassword );

			/* Ici, nous placerons nos requ�tes vers la BDD */
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
								resultSet.getString( "nom" ),
								resultSet.getString( "prenom" ),
								resultSet.getString( "age" ),
								resultSet.getString("datenaissance"),
								resultSet.getString( "adresse" )
								);
					} else {
						return null;
					}
				}
			}

		} catch ( SQLException e ) {
			/* G�rer les �ventuelles erreurs ici */
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

	public static void addUser( String login, String password, String nom, String prenom, String age, String dateNaissance, String adresse ){
		System.out.println("Add User");

		Connection connexion = null;

		try {
			connexion = DriverManager.getConnection( dbURL, dbLogin, dbPassword );

			PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO T_Users(login, password, nom, prenom, age, dateNaissance, adresse) VALUES(?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setString(1, login);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, nom);
			preparedStatement.setString(4, prenom);
			preparedStatement.setString(5, age);
			preparedStatement.setString(6, dateNaissance);
			preparedStatement.setString(7, adresse);

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}


	}

	public static void deleteUser(int id){

		System.out.println("Delete User");
		System.out.println(id);


		/* Connexion � la base de donn�es */

		Connection connexion = null;
		try {
			connexion = DriverManager.getConnection( dbURL, dbLogin, dbPassword );

			/* Ici, nous placerons nos requ�tes vers la BDD */


			String sql = "DELETE FROM T_Users WHERE IdUser = ?;";

			try ( PreparedStatement stmt = connexion.prepareStatement(sql)) {

				stmt.setInt(1, id);
				stmt.executeUpdate();
				
				System.out.println("deleted successfully");
				

			} catch ( SQLException e ) {
				/* G�rer les �ventuelles erreurs ici */
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


		}catch ( SQLException e ) {
			/* G�rer les �ventuelles erreurs ici */
			System.out.println("Au niveau du DriverManager" + e);
		}

		


	}
}
