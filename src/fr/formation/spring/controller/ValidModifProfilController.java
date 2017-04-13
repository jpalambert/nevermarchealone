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
import org.springframework.web.bind.annotation.SessionAttributes;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Utilisateur;

@Controller
@SessionAttributes("user")
public class ValidModifProfilController {
	
	@Autowired
	private UtilisateurDAO uDAO;
	
	@RequestMapping(value = "/modifProfilValider", method = RequestMethod.POST)
	public String modifProfil1(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result,HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		
		req.setAttribute("usession", usession);
		
		usession.setDescription(utilisateur.getDescription());
		usession.setBavard(utilisateur.getBavard());
		usession.setHobbie(utilisateur.getHobbie());
		uDAO.save(usession);

		return "profilDetailleValider";
	}


}
