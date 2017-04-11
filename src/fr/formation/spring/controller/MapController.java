package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Utilisateur;

@Controller
public class MapController {
	@Autowired
	private UtilisateurDAO uDAO;

	@RequestMapping(value = "/map", method = RequestMethod.POST)
	public String map(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");
		req.setAttribute("userSession", usession);

		if (usession.getEtat().equals("accompagne")) {

			req.setAttribute("listU", uDAO.findAllByEtat());

		}
		//System.out.println(uDAO.findAllByEtat().get(0).getUsername());
		return "map";
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
