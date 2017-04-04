package fr.formation.spring.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import fr.formation.spring.dao.PersonneDAO;
import fr.formation.spring.dao.ProduitDAO;
import fr.formation.spring.model.Client;
import fr.formation.spring.model.Fournisseur;
import fr.formation.spring.model.Produit;


@RestController
@RequestMapping("/api/generator")
public class GeneratorController {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private PersonneDAO personneDAO;
	
	@Autowired
	private ProduitDAO produitDAO;
		
	@RequestMapping(value="", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity generate() {
		Fournisseur myFournisseur = null;
		Client myClient = null;
		Produit myProduit = null;
		
		
		/* CREATION D'UN CLIENT */
		myClient = new Client();
		myClient.setNom("PERROUAULT");
		myClient.setPrenom("Jérémy");
		myClient.setAge(29);
		myClient.setChiffreAffaire((double)1235);
		myClient.setDateNaissance(new Date());
		myClient = (Client)this.personneDAO.save(myClient);
		
		
		/* CREATION D'UN FOURNISSEUR ET DE PRODUITS */
		myFournisseur = new Fournisseur();
		myFournisseur.setNom("PERROUAULT");
		myFournisseur.setPrenom("Alissa");
		myFournisseur.setAge(27);
		myFournisseur.setSociete("GOPRO");
		myFournisseur = (Fournisseur)this.personneDAO.save(myFournisseur);
		
		myProduit = new Produit();
		myProduit.setNom("GoPRO HERO 5");
		myProduit.setPrix(429.99);
		myProduit.setFournisseur(myFournisseur);
		this.produitDAO.save(myProduit);
		
		myProduit = new Produit();
		myProduit.setNom("GoPRO KARMA");
		myProduit.setPrix(649.99);
		myProduit.setFournisseur(myFournisseur);
		myProduit = this.produitDAO.save(myProduit);

		//On ajoute ce produit à la liste des achats du client
		myClient.getProduits().add(myProduit);
		myClient = (Client) this.personneDAO.save(myClient);
		
		
		/* CREATION D'UN DEUXIEME FOURNISSEUR ET D'UN PRODUIT */
		myFournisseur = new Fournisseur();
		myFournisseur.setNom("CESBRON");
		myFournisseur.setPrenom("Martin");
		myFournisseur.setAge(25);
		myFournisseur.setSociete("PUNCHY PUZZLE");
		myFournisseur = (Fournisseur)this.personneDAO.update(myFournisseur);
		
		myProduit = new Produit();
		myProduit.setNom("LOGICIEL DE GESTION");
		myProduit.setPrix(14999.99);
		myProduit.setFournisseur(myFournisseur);
		myProduit = this.produitDAO.save(myProduit);

		//On ajoute ce produit à la liste des achats du client
		myClient.getProduits().add(myProduit);
		this.personneDAO.save(myClient);
		return new ResponseEntity(HttpStatus.OK);
		
	}
}