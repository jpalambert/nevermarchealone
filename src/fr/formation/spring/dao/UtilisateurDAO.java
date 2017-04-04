package fr.formation.spring.dao;

import java.util.List;



import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import fr.formation.spring.model.Utilisateur;



@Repository
@Transactional
public class UtilisateurDAO extends DAO<Utilisateur>
{

	@Override
	public Utilisateur find(int id) {
 return this.em.find(Utilisateur.class, id);
	}

	@Override
	public List<Utilisateur> findAll() {
		return this.em.createQuery("SELECT p FROM Utilisateur u", Utilisateur.class).getResultList();
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
}