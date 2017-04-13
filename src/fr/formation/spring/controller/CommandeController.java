package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.CommandeDAO;
import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Commande;
import fr.formation.spring.model.Utilisateur;

@Controller
public class CommandeController {
	@Autowired
	private UtilisateurDAO uDAO;

	@Autowired
	private CommandeDAO cDAO;
	@RequestMapping(value = "/commande", method = RequestMethod.POST)
	public String commande(HttpServletRequest req, HttpServletResponse resp, Model model) {

		// recupere l'username de l'accompagnant et l'envoie dans la prochaine
		// JSP
		req.setAttribute("comcom", req.getParameter("command"));
		// recupere l'username de l'accompagne via la session et creation de
		// notre couple accompagn�/accompagnant pour sauvegarde dans la base de
		// donn�e
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");
		Utilisateur accompagnant = uDAO.findByUsername(req.getParameter("command"));

		// on teste en premier si l'accompagnant est vraiment disponible
		if (accompagnant.getEtat()=="etat"){
			String nonDispo = "Pas de chance, quelquun est passe avant vous!";
			req.setAttribute("nonDispo", nonDispo);
			req.setAttribute("nonDispoVal", 1);
			System.out.println(req.getAttribute("nonDispo"));
			return "recherche";
		} 
		else {
			// creation de la commande
			Commande c = new Commande();
			// attribution des param�tres de la commande
			c.setUsernameUser(usession.getUsername());
			c.setLatUser(usession.getLat());
			c.setLngUser(usession.getLng());
			
			c.setUsernameAcc(accompagnant.getUsername());
			c.setLatAcc(accompagnant.getLat());
			c.setLngAcc(accompagnant.getLng());
			
			// attribution de la valeur 1 pour la commande en cours (permets � l'acdcompagnant d'avoir la notification)
			c.setCommandeEnCours(1);
			
			// sauvegarde de la commande
			cDAO.save(c);
			
			// apr�s avoir command� le marcheur, permets de ne plus le faire apparaitre pour les autres.
			accompagnant.setEtat("etat");
			uDAO.save(accompagnant);
			return "commande";
			
		}
		
		
		

	

	}
}
