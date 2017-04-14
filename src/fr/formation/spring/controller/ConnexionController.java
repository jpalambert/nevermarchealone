package fr.formation.spring.controller;



import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.CommandeDAO;
import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.FormUser;
import fr.formation.spring.model.Utilisateur;

@Controller

public class ConnexionController {
	@Autowired
	private UtilisateurDAO uDAO;

	@Autowired
	private CommandeDAO cDAO;

	@RequestMapping(value = "/deconnexion", method = RequestMethod.GET)
	public String deconnexion(HttpServletRequest req) {
		HttpSession session = req.getSession();
		if (session != null) {
			Utilisateur userVerif = (Utilisateur) session.getAttribute("user");
			userVerif.setEtat("etat");
			uDAO.save(userVerif);
			session.invalidate();
			return "connexion";
		}

		return "connexion";
	}

	@RequestMapping(value = "/connexion", method = RequestMethod.GET)
	public String connexion(HttpServletRequest req) {
		HttpSession session = req.getSession();

		// if (session.getAttribute(null)==null){
		// return "connexion";
		// }
		// Utilisateur userVerif =
		// uDAO.findByUsername(utilisateur.getUsername());
		//
		// HttpSession session = req.getSession();
		// session.setAttribute("user", userVerif);
		return "connexion";

	}

	@RequestMapping(value = "/connexion", method = RequestMethod.POST)
	public String connexion(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result,
			HttpServletRequest req) {

//		try {
			Utilisateur userVerif = uDAO.findByUsername(utilisateur.getUsername());

			if (userVerif.getPassword().equals(utilisateur.getPassword())) {

				userVerif.setEtat(utilisateur.getEtat());
				userVerif.setLat(utilisateur.getLat());
				userVerif.setLng(utilisateur.getLng());
				uDAO.save(userVerif);

				System.out.println(userVerif.getEtat());

				// redirection selon recherche souhaitee
				if (utilisateur.getEtat().equals("accompagnateur")) {
					HttpSession session = req.getSession();
					session.setAttribute("user", userVerif);
					System.out.println("Bravo, tu es connecte!");
					return "rechercheAccompagnateur";
				} else {
					HttpSession session = req.getSession();
					session.setAttribute("user", userVerif);
					System.out.println("Bravo, tu es connecte!");
					return "rechercheUtilisateur";
				}

			} else {
				System.out.println("Non connect�(e), mot de passe erron�");
				return "connexion";
			}

//		} catch (Exception e) {
//			System.out.println("Non connecté(e), Username erroné");
//			return "connexion";
		}



	@ModelAttribute("user")
	public FormUser initUtilisateur() {
		return new FormUser();
	}

}
