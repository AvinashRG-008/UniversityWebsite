package com.cts.University.model;

/*
 * @Author Prasanth Bhimana
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ServicesReport {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int reportId;
	private String serviceName;
	private String userId;
	
	//Getters and setters for providing report to users by admin
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public ServicesReport(String serviceName, String userId) {
		super();
		this.serviceName = serviceName;
		this.userId = userId;
	}
	public ServicesReport() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ServicesReport [reportId=" + reportId + ", serviceName=" + serviceName + ", userId=" + userId + "]";
	}
	
	
}
