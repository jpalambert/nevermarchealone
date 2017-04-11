package fr.formation.spring.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Utilisateur {

	@Id
	@Column(name = "PER_USR")
	private String username;

	@NotEmpty(message = "Le nom est obligatoire")
	private String nom;

	@NotEmpty(message = "Le prenom est obligatoire")
	private String prenom;

	@NotEmpty(message = "Password est obligatoire")
	private String password;
	@NotEmpty(message = "sexe est obligatoire")
	private String sexe;

	private String etat;
	private double lat;
	private double lng;

	private String bavard;
	private String description;
	private String hobbie;
	
	
	
		/**
	 * @return the hobbie
	 */
	public String getHobbie() {
		return hobbie;
	}

	/**
	 * @param hobbie the hobbie to set
	 */
	public void setHobbie(String hobbie) {
		this.hobbie = hobbie;
	}

		/**
	 * @return the bavard
	 */
	public String getBavard() {
		return bavard;
	}

	/**
	 * @param bavard the bavard to set
	 */
	public void setBavard(String bavard) {
		this.bavard = bavard;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}


		/**
	 * @return the lat
	 */
	public double getLat() {
		return lat;
	}

	/**
	 * @param lat
	 *            the lat to set
	 */
	public void setLat(double lat) {
		this.lat = lat;
	}

	/**
	 * @return the lng
	 */
	public double getLng() {
		return lng;
	}

	/**
	 * @param lng
	 *            the lng to set
	 */
	public void setLng(double lng) {
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
