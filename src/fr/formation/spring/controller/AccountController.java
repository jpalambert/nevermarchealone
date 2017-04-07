package fr.formation.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.FormUser;


@Controller

public class AccountController {

	@Autowired
	private UtilisateurValidator utilisateurValidator;
	
	@Autowired
	private UtilisateurDAO uDAO;
	
	
	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String subscribe(Model model) {
		return "subscribe";
		
	
	}
			
	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public String subscribe(@Valid @ModelAttribute("user") FormUser formUser, BindingResult result, Model model) {
		utilisateurValidator.validate(formUser, result);
		if ( result.hasErrors() ) {
			System.out.println("Validation errors:");
			for ( ObjectError oe : result.getAllErrors() ) {
				System.out.println(oe.getDefaultMessage());
			}
			return "subscribe";
		}
		formUser.setLat(0);
		formUser.setLng(0);
		formUser.setEtat("etat");
		
		uDAO.save(formUser);
		System.out.println(formUser.toString());
		return "connexion";
	}
	

	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}


}
