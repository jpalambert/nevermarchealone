package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;

@Controller
public class TrajetController {


	@RequestMapping(value = "/trajet", method = RequestMethod.POST)
	public String trajet() {
	
		return "trajet";
	}

	@RequestMapping(value = "/trajet", method = RequestMethod.GET)
	public String trajet1() {
		
		return "trajet";
	}

}

