package fr.formation.spring.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="client")
@PrimaryKeyJoinColumn(name="CLI_ID", referencedColumnName="PER_ID")
public class Client extends Personne
{
	private static final long serialVersionUID = 1L;
	
	
	@Column(name="CLI_CHIFFRE_AFFAIRE")
	private Double chiffreAffaire;

	// Removing the fetch type Eager : see https://issues.apache.org/jira/browse/OPENJPA-1908
	@ManyToMany(fetch=FetchType.EAGER)//(cascade=CascadeType.MERGE)
	@JoinTable(
		name="achat",
		joinColumns=@JoinColumn(name="ACH_CLIENT_ID", referencedColumnName="CLI_ID"),
	    inverseJoinColumns=@JoinColumn(name="ACH_PRODUIT_ID", referencedColumnName="PRO_ID")
	)
	private List<Produit> produits;
	
	
	public Double getChiffreAffaire() {
		return chiffreAffaire;
	}
	
	public void setChiffreAffaire(Double chiffreAffaire) {
		this.chiffreAffaire = chiffreAffaire;
	}
	
	
	public List<Produit> getProduits() {
		return produits;
	}
	
	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}
	
	
	public Client() {
		this.produits = new ArrayList<Produit>();
	}
}