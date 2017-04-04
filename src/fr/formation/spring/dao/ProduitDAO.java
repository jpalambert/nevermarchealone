package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Produit;


@Repository
@Transactional
public class ProduitDAO extends DAO<Produit>
{

	@Override
	public Produit find(int id) {
		return this.em.find(Produit.class, id);
	}

	@Override
	public List<Produit> findAll() {
		return this.em.createQuery("SELECT p FROM Produit p", Produit.class).getResultList();
	}

	@Override
	public Produit save(Produit object) {
		return this.em.merge(object);
	}

	@Override
	public boolean delete(Produit object) {
		try {
			this.em.remove(this.em.merge(object));
			return true;
		}
		
		catch (Exception ex) {
			return false;
		}
	}
}