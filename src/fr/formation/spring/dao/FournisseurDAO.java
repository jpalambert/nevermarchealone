package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Fournisseur;

@Repository
@Transactional
public class FournisseurDAO extends DAO<Fournisseur> {

	@Override
	public Fournisseur find(int id) {
		return em.find(Fournisseur.class, id);
	}

	@Override
	public List<Fournisseur> findAll() {
		return this.em.createQuery("SELECT f FROM Fournisseur f", Fournisseur.class).getResultList();
	}

	public Fournisseur add(Fournisseur object) {
		this.em.persist(object);
		return object;
	}
	
	@Override
	public Fournisseur save(Fournisseur object) {
		return this.em.merge(object);
	}

	@Override
	public boolean delete(Fournisseur object) {
		try {
			this.em.remove(object);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
