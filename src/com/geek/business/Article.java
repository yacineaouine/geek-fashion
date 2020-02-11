package com.geek.business;

public class Article {

	private int idArticle;
	private String description;
	private String brand;
	private String unitaryPrice;
	private String urlImage;
	
	
	public Article() {
		this( 0, "unknown", "unknown", "0", "unknown");
	}
	
	
	public Article( int idArticle, String description, String brand, String unitaryPrice, String urlImage ) {
		this.setIdArticle( idArticle );
		this.setDescription( description );
		this.setBrand( brand );
		this.setUnitaryPrice( unitaryPrice );
		this.setUnitaryPrice( urlImage );
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
	
	public String getUnitaryPrice() {
		return unitaryPrice;
	}
	
	public void setUnitaryPrice(String unitaryPrice) {
		this.unitaryPrice = unitaryPrice;
	}
	
	public String getUrlImage() {
		return urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	
	
	
}
