package com.geek.business;

public class User {

	private int idUser;
	private String login;
	private String password;
	private int connectionNumber;
	
	
	public User() {
		this( 0, "john", "doe", 0 );
	}
	
	public User( int idUser, String login, String password, int connectionNumber ) {
		this.setIdUser( idUser );
		this.setLogin( login );
		this.setPassword( password );
		this.setConnectionNumber( connectionNumber );
	}
	
	
	public int getIdUser() {
		return idUser;
	}
	
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	public String getLogin() {
		return login;
	}
	
	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getConnectionNumber() {
		return connectionNumber;
	}
	
	public void setConnectionNumber(int connectionNumber) {
		this.connectionNumber = connectionNumber;
	}

	@Override
	public String toString() {
		return "User[idUser=" + idUser + ", login=" + login + ", password=" + password + ", connectionNumber=" + connectionNumber + "]";
	}
	
}
