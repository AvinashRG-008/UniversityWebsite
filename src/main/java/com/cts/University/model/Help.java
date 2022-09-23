package com.cts.University.model;

/*
 * @Author Amrit Sagar Khuntia
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Help {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int requestId;
	private String userId;
	private String description;
	private String resolution;
	
	//Getters and setters for user resolution provided by admin
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getResolution() {
		return resolution;
	}
	public void setResolution(String resolution) {
		this.resolution = resolution;
	}
	@Override
	public String toString() {
		return "Help [userId=" + userId + ", requestId=" + requestId + ", description=" + description + ", resolution="
				+ resolution + "]";
	}
	
}
