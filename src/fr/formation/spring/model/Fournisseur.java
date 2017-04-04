package fr.formation.spring.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="fournisseur")
@PrimaryKeyJoinColumn(name="FOU_ID", referencedColumnName="PER_ID")
public class Fournisseur extends Personne
{
	private static final long serialVersionUID = 1L;
	
	
	@Column(name="FOU_SOCIETE")
	private String societe;
	
	@OneToMany(mappedBy="fournisseur", fetch=FetchType.EAGER, cascade=CascadeType.REMOVE)
	private List<Produit> produits;
	
	
	public String getSociete() {
		return societe;
	}
	
	public void setSociete(String societe) {
		this.societe = societe;
	}
	
	
	public List<Produit> getProduits() {
		return produits;
	}
	
	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}
}