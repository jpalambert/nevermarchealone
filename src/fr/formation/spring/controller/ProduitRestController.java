package fr.formation.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import fr.formation.spring.dao.ProduitDAO;
import fr.formation.spring.model.Produit;

@RestController
@RequestMapping("/api/produit")
@Transactional
public class ProduitRestController {

	@Autowired
	private ProduitDAO produitDAO;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<List<Produit>> getAll() {
		List<Produit> detachedProducts = new ArrayList<>();
		for ( Produit p : this.produitDAO.findAll()) {
			this.produitDAO.getEntityManager().detach(p);
			p.setFournisseur(null);
			p.setClients(null);
			detachedProducts.add(p);
		}
	
		return new ResponseEntity<List<Produit>>(detachedProducts, HttpStatus.OK);
	}
	@RequestMapping(value="", method=RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<Produit> add(@RequestBody Produit produit) {
		produit = this.produitDAO.save(produit);
		
		return new ResponseEntity<Produit>(produit, HttpStatus.OK);
	}
	@RequestMapping(value="/{id}", method=RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<Boolean> delete(@PathVariable int id) {
		this.produitDAO.delete(this.produitDAO.find(id));
		
		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}
}
