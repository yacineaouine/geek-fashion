package com.geek.beans;

import java.io.Serializable;

public class Personne implements Serializable {
	
	private int age;
	private String login;
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}

}
