package fr.formation.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HistoriqueController {



		@RequestMapping(value = "/historique", method = RequestMethod.GET)
		public String cgu(Model model) {
			return "historique";
			
		
		}

}
