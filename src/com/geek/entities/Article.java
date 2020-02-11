package com.geek.entities;

import java.io.Serializable;


import javax.persistence.*;

/**
 * Entity implementation class for Entity: Article
 *
 */
@Entity
@Table(name = "t_articles")
public class Article implements Serializable {

	
	private static final long serialVersionUID = 1L;

	public Article() {
		super();
	}
	
	@Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long      idArticle;
    @Column( name = "description" )
    private String    description;
    @Column( name = "brand" )
    private String    brand;
    @Column( name = "unitaryPrice" )
    private double    unitaryPrice;
	
	 public Long getIdArticle() {
		return idArticle;
	}
	public void setIdArticle(Long idArticle) {
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
