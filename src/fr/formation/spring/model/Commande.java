package fr.formation.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Commande {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int numCommande;
	
	private String usernameUser;
	private String usernameAcc;
	
	private double latUser;
	private double lngUser;
	
	private double latAcc;
	private double lngAcc;
	
	private int commandeEnCours=0;
	
	public int getCommandeEnCours() {
		return commandeEnCours;
	}
	public void setCommandeEnCours(int commandeEnCours) {
		this.commandeEnCours = commandeEnCours;
	}
	public int getNumCommande() {
		return numCommande;
	}
	public void setNumCommande(int numCommande) {
		this.numCommande = numCommande;
	}
	public String getUsernameUser() {
		return usernameUser;
	}
	public void setUsernameUser(String usernameUser) {
		this.usernameUser = usernameUser;
	}
	public String getUsernameAcc() {
		return usernameAcc;
	}
	public void setUsernameAcc(String usernameAcc) {
		this.usernameAcc = usernameAcc;
	}
	public double getLatUser() {
		return latUser;
	}
	public void setLatUser(double latUser) {
		this.latUser = latUser;
	}
	public double getLngUser() {
		return lngUser;
	}
	public void setLngUser(double lngUser) {
		this.lngUser = lngUser;
	}
	public double getLatAcc() {
		return latAcc;
	}
	public void setLatAcc(double latAcc) {
		this.latAcc = latAcc;
	}
	public double getLngAcc() {
		return lngAcc;
	}
	public void setLngAcc(double lngAcc) {
		this.lngAcc = lngAcc;
	}
	
}
