package fr.formation.spring.controller;


import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.FormUser;
import fr.formation.spring.model.Utilisateur;


@Controller

public class ConnexionController {
@Autowired
private UtilisateurDAO uDAO;


	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public String connexion(Model model) {
		return "connexion";
	}

	@RequestMapping(value = "/connexion", method = RequestMethod.POST)
	public String connexion(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result, Model model) {
		Utilisateur userVerif = uDAO.findByUsername(utilisateur.getUsername());
	
		System.out.println(utilisateur.getSexe());
		System.out.println(utilisateur.getLat());
		System.out.println(utilisateur.getUsername());
		if (userVerif.getPassword().equals(utilisateur.getPassword()))
		{
			
			userVerif.setEtat(utilisateur.getEtat());
			userVerif.setLat(utilisateur.getLat());
			userVerif.setLng(utilisateur.getLng());
			uDAO.save(userVerif);
			System.out.println(userVerif.getEtat());
			
			//redirection selon recherche souhaitee
			if(utilisateur.getEtat().equals("accompagnateur"))
			{
				
				System.out.println("Bravo, tu es connecte!");
				return "rechercheAccompagnateur";
			}
			else
			{
				System.out.println("Bravo, tu es connecte!");
				return "rechercheUtilisateur";
			}
		} else{
			System.out.println("t'es vraiment une merde");
			return "connexion";
		}
	
	}

	
	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}

}
