package fr.formation.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Utilisateur {
	
	@Id
    @Column(name="PER_USR")
	private String username;
	
	@NotEmpty(message="Le nom est obligatoire")
	private String nom;
	
	@NotEmpty(message="Le prénom est obligatoire")
	private String prenom;
	
	
	
	@NotEmpty(message="Password est obligatoire")
	private String password;
	@NotEmpty(message="sexe est obligatoire")
	private String sexe;
	@NotEmpty(message="sexe est obligatoire")
	private String etat;
	

	public String getEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
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
