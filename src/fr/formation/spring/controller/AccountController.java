package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.CommandeDAO;
import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Commande;
import fr.formation.spring.model.FormUser;
import fr.formation.spring.model.Utilisateur;


@Controller

public class AccountController {

	@Autowired
	private UtilisateurValidator utilisateurValidator;

	@Autowired
	private UtilisateurDAO uDAO;

	@Autowired
	private CommandeDAO cDAO;

	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String subscribe(Model model) {
		return "subscribe";
	}



	

	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public String subscribe(@Valid @ModelAttribute("user") FormUser formUser, BindingResult result, Model model) {
		utilisateurValidator.validate(formUser, result);
		if (result.hasErrors()) {
			System.out.println("Validation errors:");
			for (ObjectError oe : result.getAllErrors()) {
				System.out.println(oe.getDefaultMessage());
			}
			return "subscribe";
		}
		
		System.out.println(formUser.getNom());
		formUser.setBavard("");
		formUser.setDescription("");
		formUser.setLat(0);
		formUser.setLng(0);
		formUser.setHobbie("");
		formUser.setEtat("etat");
		
		
		uDAO.save(formUser);
		
		
		Commande cinit = new Commande();
		cinit.setUsernameAcc(formUser.getUsername());
		cinit.setUsernameUser(formUser.getUsername());
		cinit.setCommandeEnCours(0);
		System.out.println(cinit.getCommandeEnCours());
		cDAO.save(cinit);
		

		return "connexion";
	}

	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}

}
