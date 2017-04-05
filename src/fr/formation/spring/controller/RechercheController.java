package fr.formation.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class RechercheController {
	@RequestMapping(value = "/recherche", method = RequestMethod.GET)
	public String recherche(Model model) {
		return "rechercheUtilisateur";
	}

	/*@RequestMapping(value = "/recherche", method = RequestMethod.POST)
	public String recheche(Model model) {
		return "maps"; // va chercher la vue "maps" et donc la google map.

	}*/
	
		@RequestMapping(value = "/rechercheAcc", method = RequestMethod.GET)
		public String rechercheAccompagnateur(Model model) {
			return "rechercheAccompagnateur";
		}
}
