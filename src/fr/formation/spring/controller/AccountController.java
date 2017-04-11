package fr.formation.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.CommandeDAO;
import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Commande;
import fr.formation.spring.model.FormUser;
import fr.formation.spring.model.Utilisateur;

@Controller

public class AccountController {

	@Autowired
	private UtilisateurValidator utilisateurValidator;

	@Autowired
	private UtilisateurDAO uDAO;

	@Autowired
	private CommandeDAO cDAO;

	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String subscribe(Model model) {
		return "subscribe";
	}

	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(Model model) {
		return "faq";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {
		return "about";
	}

	@RequestMapping(value = "/rechercheacc", method = RequestMethod.GET)
	public String rechercheacc(Model model) {
		return "rechercheAccompagnateur";

	}

	@RequestMapping(value = "/recherche", method = RequestMethod.GET)
	public String recherche(Model model) {
		return "rechercheUtilisateur";

	}

	@RequestMapping(value = "/commande", method = RequestMethod.POST)
	public String commande(HttpServletRequest req, HttpServletResponse resp, Model model) {
		// recupere l'username de l'accompagnant et l'envoie dans la prochaine
		// JSP
		req.setAttribute("comcom", req.getParameter("command"));
		// recupere l'username de l'accompagne via la session et creation de
		// notre couple accompagné/accompagnant pour sauvegarde dans la base de
		// donnée
		HttpSession session = req.getSession();
		Utilisateur usession = (Utilisateur) session.getAttribute("user");
		Utilisateur accompagnant = uDAO.findByUsername(req.getParameter("command"));

		// creation de la commande
		Commande c = new Commande();
		// attribution des paramètres de la commande
		c.setUsernameUser(usession.getUsername());
		c.setLatUser(usession.getLat());
		c.setLngUser(usession.getLng());
		
		c.setUsernameAcc(accompagnant.getUsername());
		c.setLatAcc(accompagnant.getLat());
		c.setLngAcc(accompagnant.getLng());
		
		// attribution de la valeur 1 pour la commande en cours (permets à l'acdcompagnant d'avoir la notification)
		c.setCommandeEnCours(1);
		
		// sauvegarde de la commande
		cDAO.save(c);

		return "commande";

	}

	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public String subscribe(@Valid @ModelAttribute("user") FormUser formUser, BindingResult result, Model model) {
		utilisateurValidator.validate(formUser, result);
		if (result.hasErrors()) {
			System.out.println("Validation errors:");
			for (ObjectError oe : result.getAllErrors()) {
				System.out.println(oe.getDefaultMessage());
			}
			return "subscribe";
		}

		uDAO.save(formUser);
		// System.out.println(formUser.toString());
		return "connexion";
	}

	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}

}
