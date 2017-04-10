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
public class ProfilController {

	@Autowired
	private UtilisateurDAO uDAO;
	
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.GET)
	public String profilDetaille(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		System.out.println(usession.getNom());
		return "profilDetaille";
	}
	
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.POST)
	public String profilDetaille1(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result,HttpServletRequest req, Model model) {
		//Utilisateur userVerif = uDAO.findByUsername(utilisateur.getUsername());
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		
		//System.out.println(utilisateur.getBavard());
		usession.setDescription(utilisateur.getDescription());
		usession.setBavard(utilisateur.getBavard());
		
		uDAO.save(usession);
		return "profilDetaille";
	}
	


}
