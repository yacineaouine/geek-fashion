package com.geek.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.*;




@Entity
public class Personne implements Serializable {
	
	@Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long      id;
    private String    email;
    @Column( name = "mot_de_passe" )
    private String    motDePasse;
    private String    nom;
    @Column( name = "date_inscription" )
    private Timestamp dateInscription;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMotDePasse() {
		return motDePasse;
	}
	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Timestamp getDateInscription() {
		return dateInscription;
	}
	public void setDateInscription(Timestamp dateInscription) {
		this.dateInscription = dateInscription;
	}
	


}
