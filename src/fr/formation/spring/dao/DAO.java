package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import fr.formation.spring.model.Utilisateur;

public abstract class DAO<T>
{
	@PersistenceContext
	protected EntityManager em;
	
	public EntityManager getEntityManager() {
		return em;
	}
	public abstract List<T> findAll();
	public abstract T save(T object);
	public abstract boolean delete(T object);
	public abstract T findByUsername(String username);
	public abstract List<T> findAllByEtat() ;
			
}