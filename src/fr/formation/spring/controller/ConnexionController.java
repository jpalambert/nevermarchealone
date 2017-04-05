package fr.formation.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.model.FormUser;


@Controller

public class ConnexionController {


	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public String connexion(Model model) {
		return "connexion";
		
	
	}



	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}	
	
	
}

