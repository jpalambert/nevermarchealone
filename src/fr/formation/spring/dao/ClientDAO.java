package fr.formation.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.spring.model.Client;

@Repository
@Transactional
public class ClientDAO extends DAO<Client> {

	@Override
	public Client find(int id) {
		return em.find(Client.class, id);
	}

	public Client findClientWithProduct(int productId) {
		CriteriaQuery<Client> criteriaQuery = em.getCriteriaBuilder().createQuery(Client.class);
		Root<Client> template = criteriaQuery.from(Client.class);
//		template.joinList("produits").
		//criteriaQuery.select(template).where()
		return em.createQuery(criteriaQuery).getSingleResult();
	}
	
	public Client findWithProducts(int id) {
		TypedQuery<Client> query = this.em.createQuery("SELECT c FROM Client c LEFT JOIN FETCH c.produits WHERE c.id = :id", Client.class);
		query.setParameter("id", id);
		return query.getSingleResult();
	}

	@Override
	public List<Client> findAll() {
		return this.em.createQuery("SELECT c FROM Client c", Client.class).getResultList();
	}

	@Override
	public Client save(Client object) {
		return this.em.merge(object);
	}

	@Override
	public boolean delete(Client object) {
		try {
			this.em.remove(this.em.merge(object));
			return true;
		}

		catch (Exception ex) {
			return false;
		}
	}

}
