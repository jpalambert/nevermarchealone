package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Client;
import fr.formation.spring.model.Fournisseur;
import fr.formation.spring.model.Personne;


@Repository
@Transactional
public class PersonneDAO extends DAO<Personne>
{

	@Override
	public Personne find(int id) {
		return this.em.find(Personne.class, id);
	}

	@Override
	public List<Personne> findAll() {
		return this.em.createQuery("SELECT p FROM Personne p", Personne.class).getResultList();
	}
	
	public List<Fournisseur> findAllFournisseurs() {
		return this.em.createQuery("SELECT f FROM Fournisseur f", Fournisseur.class).getResultList();
	}
	
	public List<Client> findAllClients() {
		return this.em.createQuery("SELECT c FROM Client c", Client.class).getResultList();
	}

	@Override
	public Personne save(Personne object) {
		return this.em.merge(object);
	}

	public Personne update(Personne object) {
		this.em.persist(object);
		return object;
	}
	
	@Override
	public boolean delete(Personne object) {
		try {
			this.em.remove(this.em.merge(object));
			return true;
		}
		
		catch (Exception ex) {
			return false;
		}
	}
}