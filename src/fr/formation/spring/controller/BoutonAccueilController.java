package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.model.Utilisateur;


@Controller
public class BoutonAccueilController {
	

	
	@RequestMapping(value = "/connex", method = RequestMethod.GET)
	public String connexion1(HttpServletRequest req) {

		
		return "accueil";

	}

	
}
