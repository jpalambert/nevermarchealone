package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Commande;
import fr.formation.spring.model.Utilisateur;
@Repository
@Transactional

public class CommandeDAO extends DAO<Commande> {
	@Override
	public List<Commande> findAll() {
		return this.em.createQuery("SELECT c FROM Commande c", Commande.class).getResultList();
	}

	@Override
	public Commande save(Commande object) {
		return this.em.merge(object);
	}

	public Commande update(Commande object) {
		this.em.persist(object);
		return object;
	}

	@Override
	public boolean delete(Commande object) {
		try {
			this.em.remove(this.em.merge(object));
			return true;
		}

		catch (Exception ex) {
			return false;
		}
	}

	@Override
	public Commande findByUsername(String id) {
		return this.em.find(Commande.class, id);
	}
	@Override
    public List<Commande> findAllByEtat() {
        return this.em.createQuery("SELECT c FROM Commande c WHERE c.etat='accompagnateur'", Commande.class).getResultList();
    }
	
	@Override
	public Commande findCommandeEnCours (String username){
		Commande cvide = new Commande();
		try {this.em.createQuery("SELECT c FROM Commande c WHERE c.commandeEnCours=1 AND c.usernameAcc=:custUser", Commande.class)
				.setParameter("custUser", username).getSingleResult();}
		
		catch (Exception e){
			return cvide;
			
		}
		
			return this.em.createQuery("SELECT c FROM Commande c WHERE c.commandeEnCours=1 AND c.usernameAcc=:custUser", Commande.class).setParameter("custUser", username).getSingleResult();
	}
	
	public List<Commande> findAllByRecherche(Commande commande){
		
		return this.em.createQuery("SELECT c FROM Commande c WHERE c.etat='accompagnateur'", Commande.class).getResultList();
	}
	
	@Override
    public List<Commande> findAllByEtat(Commande user) {
        return this.em.createQuery("SELECT c FROM Commande c ", Commande.class).getResultList();
    }
	
}
