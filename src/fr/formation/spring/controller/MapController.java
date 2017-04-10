package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;

@Controller
public class MapController {
	@Autowired
	private UtilisateurDAO uDAO;

	@RequestMapping(value = "/map", method = RequestMethod.POST)
	public String map(HttpServletRequest req) {
		req.setAttribute("listU", uDAO.findAllByEtat() );
		System.out.println(uDAO.findAllByEtat().get(0).getUsername());
		return "map";
	}

	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String map2(HttpServletRequest req) {
		req.setAttribute("listU", uDAO.findAllByEtat() );
		System.out.println(uDAO.findAllByEtat().get(0).getUsername());
		return "map";
	}

}
