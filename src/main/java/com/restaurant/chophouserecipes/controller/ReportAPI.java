package com.restaurant.chophouserecipes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.restaurant.chophouserecipes.entity.Dish;
import com.restaurant.chophouserecipes.model.Payload;
import com.restaurant.chophouserecipes.repository.ReportDAO;

@RestController
@CrossOrigin(origins="*")
@RequestMapping("/recipes")
public final class ReportAPI {
	
	@Autowired
	ReportDAO reportDAO;
	
	@GetMapping(value="/getAllDishes")
	private ResponseEntity<Payload<List<Dish>>> getAllDishes() {
		
		ResponseEntity<Payload<List<Dish>>> response = null;
		
		Payload<List<Dish>> payload = null;
		List<Dish> dishes = null;
		
		try {
			dishes = reportDAO.getAllDishes();
			
			if(dishes!=null) {
				payload = new Payload<>(dishes);
				response = new ResponseEntity<>(payload, HttpStatus.OK);
			} else {
				payload = new Payload<>(dishes, "Error, no dishes found", HttpStatus.NO_CONTENT.value());
				response = new ResponseEntity<>(payload, HttpStatus.OK);
			}
			
		} catch(Exception e) {
			e.getStackTrace();
			System.out.println("Error: " + e.getMessage());
			response = new ResponseEntity<>(payload, HttpStatus.BAD_REQUEST);
		}
		
		return response;
	}
	

}
