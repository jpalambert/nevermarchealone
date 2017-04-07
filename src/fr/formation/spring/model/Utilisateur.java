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
	
	@NotEmpty(message="Le pr�nom est obligatoire")
	private String prenom;
	
	
	
	@NotEmpty(message="Password est obligatoire")
	private String password;
	@NotEmpty(message="sexe est obligatoire")
	private String sexe;
	//@NotEmpty(message="etat  est obligatoire")
	private String etat;
	
	private long lat;
	private long lng;
	/**
	 * @return the lat
	 */
	public long getLat() {
		return lat;
	}

	/**
	 * @param lat the lat to set
	 */
	public void setLat(long lat) {
		this.lat = lat;
	}

	/**
	 * @return the lng
	 */
	public long getLng() {
		return lng;
	}

	/**
	 * @param lng the lng to set
	 */
	public void setLng(long lng) {
		this.lng = lng;
	}

	
	

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
