package com.cts.University.model;

/*
 * @Author Prasanth Bhimana
 */
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Services {
	@Id
	private String serviceId;
	private String userId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	//Getters and setters for users to volunteer the service
	private String serviceName;
	private int volunteerRequired;
	private int seatsAvailable;
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public int getVolunteerRequired() {
		return volunteerRequired;
	}
	public void setVolunteerRequired(int volunteerRequired) {
		this.volunteerRequired = volunteerRequired;
	}
	public int getSeatsAvailable() {
		return seatsAvailable;
	}
	public void setSeatsAvailable(int seatsAvailable) {
		this.seatsAvailable = seatsAvailable;
	}
	@Override
	public String toString() {
		return "Services [serviceId=" + serviceId + ", serviceName=" + serviceName + ", volunteerRequired="
				+ volunteerRequired + ", seatsAvailable=" + seatsAvailable + "]";
	}
	

}
