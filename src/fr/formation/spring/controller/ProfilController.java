package fr.formation.spring.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	@RequestMapping(value = "/modifProfil", method = RequestMethod.GET)
	public String modifProfil(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		return "modifProfil";
	}
	
	@RequestMapping(value = "/modifProfil", method = RequestMethod.POST)
	public String modifProfil1(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result,HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		
		req.setAttribute("usession", usession);
		

		
		usession.setDescription(utilisateur.getDescription());
		usession.setBavard(utilisateur.getBavard());
		usession.setHobbie(utilisateur.getHobbie());
		
		uDAO.save(usession);
		return "profilDetaille";
	}
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.GET)
	public String profilDetaille(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		return "profilDetaille";
	}
	
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.POST)
	public String profilDetaille1(HttpServletRequest req) {
		
		req.setAttribute("profiler", req.getParameter("profil"));
		req.setAttribute("profilerprenom", req.getParameter("profilprenom"));
		req.setAttribute("profilernom", req.getParameter("profilnom"));
		req.setAttribute("profilerbavard", req.getParameter("profilbavard"));
		req.setAttribute("profilerdescription", req.getParameter("profildescription"));
		req.setAttribute("profilerhobbie", req.getParameter("profilhobbie"));
		req.setAttribute("cdupost", 1);
		

		return "profilDetaille";
	}
	
	
}
