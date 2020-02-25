package com.restaurant.chophouserecipes.repository;

import java.util.List;

import com.restaurant.chophouserecipes.entity.Dish;

public interface ReportDAO {
	
	List<Dish> getAllDishes();
	List<Dish> getMenu();
}
