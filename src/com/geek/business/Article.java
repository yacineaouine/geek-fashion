package com.geek.business;

public class Article {

	private int idArticle;
	private String description;
	private String brand;
	private double unitaryPrice;
	
	
	public Article() {
		this( 0, "unknown", "unknown", 0 );
	}
	
	
	public Article( int idArticle, String description, String brand, double unitaryPrice ) {
		this.setIdArticle( idArticle );
		this.setDescription( description );
		this.setBrand( brand );
		this.setUnitaryPrice( unitaryPrice );
	}


	public int getIdArticle() {
		return idArticle;
	}
	
	public void setIdArticle(int idArticle) {
		this.idArticle = idArticle;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public double getUnitaryPrice() {
		return unitaryPrice;
	}
	
	public void setUnitaryPrice(double unitaryPrice) {
		this.unitaryPrice = unitaryPrice;
	}
	
	
	
}
