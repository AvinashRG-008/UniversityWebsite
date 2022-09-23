package com.cts.University.model;

/*
 * @Author Prasanth Bhimana
 */
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Admin {
	
	@Id
	private String userId;
	private String password;
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Admin(String userId, String password) {
		super();
		this.userId = userId;
		this.password = password;
	}
//Getters and setters for Admin Login Page
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [userId=" + userId + ", password=" + password + "]";
	}

}
