package fr.formation.spring.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

public class Utilisateur {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="PER_ID")
    private int id;

	@NotEmpty(message="Le nom est obligatoire")
	private String nom;
	
	@NotEmpty(message="Le prénom est obligatoire")
	private String prenom;
	
	@NotEmpty(message="Username est obligatoire")
	private String username;
	
	@NotEmpty(message="Password est obligatoire")
	private String password;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Utilisateur() {
		//
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Utilisateur [nom=" + nom + ", prenom=" + prenom + ", username=" + username + ", password=" + password
				+ "]";
	}

}
