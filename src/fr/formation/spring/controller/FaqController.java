package fr.formation.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FaqController {

	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(Model model) {
		return "faq";
	}
	
}
