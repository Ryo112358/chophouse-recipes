package com.restaurant.chophouserecipes.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.restaurant.chophouserecipes.entity.Dish;

@Repository(value="reportDAO")
@Transactional(readOnly=true)
public class ReportDAOImpl implements ReportDAO {
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public List<Dish> getAllDishes() {
		
		Session session = entityManager.unwrap(Session.class);
		
		CriteriaBuilder builder = session.getCriteriaBuilder();
		
		CriteriaQuery<Dish> dishesQuery = builder.createQuery(Dish.class);
		dishesQuery.from(Dish.class);
		
		List<Dish> dishes = session.createQuery(dishesQuery).getResultList();
		
		return dishes;
		
	}

	@Override
	public List<Dish> getMenu() {
		// TODO Auto-generated method stub
		return null;
	}

}
