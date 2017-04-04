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

import fr.formation.spring.model.FormUser;


@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
	private UtilisateurValidator utilisateurValidator;
	
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
		System.out.println(formUser.toString());
		return "redirect:/home/" + formUser.getPrenom();
	}

	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}

}
