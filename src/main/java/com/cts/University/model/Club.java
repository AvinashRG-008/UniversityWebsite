package com.cts.University.model;

/*
 * @Author Asfak Rahaman
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Club {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int reportId;
	private String clubName;
	private String description;
	private String status;
	private String designation;
	private String userId;
	
	//Getters and setters for Club Activities
	public String getClubName() {
		return clubName;
	}
	public void setClubName(String clubName) {
		this.clubName = clubName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	@Override
	public String toString() {
		return "Club [reportId=" + reportId + ", clubName=" + clubName + ", description=" + description + ", status="
				+ status + ", designation=" + designation + ", userId=" + userId + "]";
	}
	
	
	
	
}
