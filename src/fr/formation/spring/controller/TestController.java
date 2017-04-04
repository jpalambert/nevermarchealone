package fr.formation.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {
	@RequestMapping(value = { "/home/{username}" }, method = RequestMethod.GET)
	public String home(@PathVariable(value = "username", required = false) String user,
			@RequestParam(value = "idCarte", required = false) Integer carte, Model model) {
		model.addAttribute("utilisateur", user);
		model.addAttribute("carte", carte);
		return "accueil";
	}
}