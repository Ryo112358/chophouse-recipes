package com.restaurant.chophouserecipes.model;

import org.springframework.http.HttpStatus;

public class Payload<T> {
	
	private int status;
	private String message;
	private T body;
	
	public Payload(T body) {
		this(body, "Success", HttpStatus.OK.value());
	}
	
	public Payload(String message) {
		this(null, message, HttpStatus.BAD_REQUEST.value());
	}
	
	public Payload(T body, String message, int status) {
		super();
		this.status = status;
		this.message = message;
		this.body = body;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public T getBody() {
		return body;
	}
	public void setBody(T body) {
		this.body = body;
	}

}
