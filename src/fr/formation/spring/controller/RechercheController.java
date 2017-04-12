package fr.formation.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.model.Utilisateur;

@Controller

public class RechercheController {

	
	
	
	@RequestMapping(value = "/rechercheacc", method = RequestMethod.GET)
	public String rechercheacc(Model model) {
		return "rechercheAccompagnateur";
		
	
	}
	
	
	@RequestMapping(value = "/recherche", method = RequestMethod.GET)
	public String rechercheGet(Model model) {
		return "rechercheUtilisateur";
		
	
	}
	
	
	@RequestMapping(value = "/recherche", method = RequestMethod.POST)
	public String recherche(Model model) {
			return "rechercheUtilisateur";

	}

	/*@RequestMapping(value = "/recherche", method = RequestMethod.POST)
	public String recheche(Model model) {
		return "maps"; // va chercher la vue "maps" et donc la google map.

	}*/
	
		@RequestMapping(value = "/rechercheAcc", method = RequestMethod.POST)
		public String rechercheAccompagnateur(Model model) {
			return "rechercheAccompagnateur";
		}
	
	/*@RequestMapping(value = "/recherche", method = RequestMethod.POST)
	public String recherche(Model model) {

		if (user.getEtat().equals("accompagne")){
			return "rechercheUtilisateur";}
		else return "rechercheAccompagnateur";
	}*/
}
