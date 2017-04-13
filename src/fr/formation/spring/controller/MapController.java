package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.CommandeDAO;
import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Utilisateur;

@Controller
public class MapController {
	@Autowired
	private UtilisateurDAO uDAO;

	@Autowired
	private CommandeDAO cDAO;

	@RequestMapping(value = "/map", method = RequestMethod.POST)
	public String map(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");
		Utilisateur uRechercher=new Utilisateur();
		req.setAttribute("userSession", usession);
		
		uRechercher.setNom("");
		uRechercher.setPrenom("");
		uRechercher.setUsername("");
		uRechercher.setPassword("");
		uRechercher.setSexe(req.getParameter("choixsexe"));
		uRechercher.setBavard(req.getParameter("parle"));
		
		System.out.println(req.getParameter("parle"));
		session.setAttribute("uRechercher", uRechercher);
		
		if(uRechercher.getSexe().equals("indifferent")){
			req.setAttribute("listU", uDAO.findAllByEtat(uRechercher));
		}else{
		
			req.setAttribute("listU", uDAO.findAllByRecherche(uRechercher));
		
		}
		return "map";
	}

	@RequestMapping(value = "/accompagnant", method = RequestMethod.POST)
	public String accomp(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");

		System.out.println(cDAO.findCommandeEnCours(usession.getUsername()).getCommandeEnCours());
		session.setAttribute("commandeEnvoi", cDAO.findCommandeEnCours(usession.getUsername()).getCommandeEnCours());
		return "accompagnant";
	}
	
	@RequestMapping(value = "/accompagnant", method = RequestMethod.GET)
	public String accomp2(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");

		System.out.println(cDAO.findCommandeEnCours(usession.getUsername()).getCommandeEnCours());
		session.setAttribute("commandeEnvoi", cDAO.findCommandeEnCours(usession.getUsername()).getCommandeEnCours());
		return "accompagnant";
	}

	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map2(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");
		
		req.setAttribute("userSession", usession);

		if (usession.getEtat().equals("accompagne")) {
			req.setAttribute("listU", uDAO.findAllByEtat());
		}
		return "map";
	}

}
