package fr.formation.spring.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.spring.dao.UtilisateurDAO;
import fr.formation.spring.model.Utilisateur;

@Controller
public class ProfilController {

	@Autowired
	private UtilisateurDAO uDAO;
	
	@RequestMapping(value = "/modifProfil", method = RequestMethod.GET)
	public String modifProfil(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		
		ArrayList<String> listHob= new ArrayList<String>();
		String delim=",";
		StringTokenizer hob= new StringTokenizer(usession.getHobbie(),delim);
	
		while (hob.hasMoreTokens()){
			listHob.add(hob.nextToken());
			System.out.println(listHob);}
		Set<String> listVerif = new HashSet<String>(listHob);
		
		System.out.println(usession.getNom());
		return "modifProfil";
	}
	
	@RequestMapping(value = "/modifProfil", method = RequestMethod.POST)
	public String modifProfil1(@ModelAttribute("user") Utilisateur utilisateur, BindingResult result,HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		
		req.setAttribute("usession", usession);
		
		//recuperer l attribut string sous forme de arraylist
		ArrayList<String> listeHobbies= new ArrayList<String>();
		String delim=",";
		StringTokenizer hobbies= new StringTokenizer(utilisateur.getHobbie(),delim);
		
		System.out.println("Nombre de mots:" + hobbies.countTokens());
		
		while (hobbies.hasMoreTokens()){
			listeHobbies.add(hobbies.nextToken());
			System.out.println(listeHobbies);}
	
		req.setAttribute("listeHobbies", listeHobbies);
		req.setAttribute("hobbies", hobbies);
		
		usession.setDescription(utilisateur.getDescription());
		usession.setBavard(utilisateur.getBavard());
		usession.setHobbie(utilisateur.getHobbie());
		
		uDAO.save(usession);
		return "profilDetaille";
	}
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.GET)
	public String profilDetaille(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		return "profilDetaille";
	}
	
	@RequestMapping(value = "/profilDetaille", method = RequestMethod.POST)
	public String profilDetaille1(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		Utilisateur usession= (Utilisateur) session.getAttribute("user");
		req.setAttribute("usession", usession);

		return "profilDetaille";
	}


}
