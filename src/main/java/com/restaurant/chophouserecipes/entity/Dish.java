package com.restaurant.chophouserecipes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Menu")
@GenericGenerator(name="pkgen", strategy="increment")
public final class Dish {
	
	@Id
	@Column(name="dish_id")
	@GeneratedValue(generator="pkgen")
	private short dishId;
	
	@Column(name="dish_name")
	private String dishName;
	
	@Column(name="dish_description")
	private String dishDescription;
	
	@Column(name="menu_item_id")
	private String menuItemId;
	
	@Column(name="category")
	private String category;
	
	@Column(name="subcategory")
	private String subcategory;
	
	@Column(name="price_rupees")
	private short priceRupees;
	
	@Column(name="active")
	private boolean active;
	
	// --------------------------------------------

	public short getDishId() {
		return dishId;
	}

	public void setDishId(short dishId) {
		this.dishId = dishId;
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public String getDishDescription() {
		return dishDescription;
	}

	public void setDishDescription(String dishDescription) {
		this.dishDescription = dishDescription;
	}

	public String getMenuItemId() {
		return menuItemId;
	}

	public void setMenuItemId(String menuItemId) {
		this.menuItemId = menuItemId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}

	public short getPriceRupees() {
		return priceRupees;
	}

	public void setPriceRupees(short priceRupees) {
		this.priceRupees = priceRupees;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
}
