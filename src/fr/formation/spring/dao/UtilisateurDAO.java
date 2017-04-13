package fr.formation.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Commande;
import fr.formation.spring.model.Utilisateur;

@Repository
@Transactional
public class UtilisateurDAO extends DAO<Utilisateur> {

	@Override
	public List<Utilisateur> findAll() {
		return this.em.createQuery("FROM Utilisateur u", Utilisateur.class).getResultList();
	}

	@Override
	public Utilisateur save(Utilisateur object) {
		return this.em.merge(object);
	}

	public Utilisateur update(Utilisateur object) {
		this.em.persist(object);
		return object;
	}

	@Override
	public boolean delete(Utilisateur object) {
		try {
			this.em.remove(this.em.merge(object));
			return true;
		}

		catch (Exception ex) {
			return false;
		}
	}

	@Override
	public Utilisateur findByUsername(String username) {
		return this.em.find(Utilisateur.class, username);
	}
	@Override
    public List<Utilisateur> findAllByEtat(Utilisateur user) {
        return this.em.createQuery("SELECT u FROM Utilisateur u WHERE u.etat='accompagnateur' and u.bavard=:bavardR", Utilisateur.class).setParameter("bavardR",user.getBavard()).getResultList();
    }
	
	@Override
    public List<Utilisateur> findAllByEtat() {
        return this.em.createQuery("SELECT u FROM Utilisateur u WHERE u.etat='accompagnateur' and u.bavard=:bavardR", Utilisateur.class).getResultList();
    }
	
	@Override
    public List<Utilisateur> findAllByRecherche(Utilisateur user) {
        return this.em.createQuery("SELECT u FROM Utilisateur u WHERE u.sexe=:sexeR and u.etat='accompagnateur' and u.bavard=:bavardR", Utilisateur.class).setParameter("sexeR",user.getSexe()).setParameter("bavardR",user.getBavard()).getResultList();
    }
	
	public Utilisateur findCommandeEnCours (String username){
		 return this.em.createQuery("SELECT c FROM Commande c WHERE c.commandeEnCours=1 AND c.usernameAcc LIKE :cusUser", Utilisateur.class).getSingleResult();
	}
	
}