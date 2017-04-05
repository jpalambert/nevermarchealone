package fr.formation.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller

public class CguController {


	@RequestMapping(value = "/cgu", method = RequestMethod.GET)
	public String cgu(Model model) {
		return "cgu";
		
	
	}

	}


