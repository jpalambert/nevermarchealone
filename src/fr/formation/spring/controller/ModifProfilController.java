package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Utilisateur;

@Controller
public class ModifProfilController {
	
	@Autowired
	private UtilisateurDAO uDAO;
	
	@RequestMapping(value = "/modifProfil", method = RequestMethod.GET)
	public String modifProfil(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		return "modifProfil";
	}
	

}
