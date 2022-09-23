package com.cts.University.model;
/*
 * @Author Prasanth Bhimana
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ClubMember {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int memberId;
	private String userId;
	private String clubName;
	private String designation;
	private int reportId;
	
	//Getters and setters for Adding Club Member
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getClubName() {
		return clubName;
	}
	public void setClubName(String clubName) {
		this.clubName = clubName;
	}
	public int getReportId() {
		return reportId;
	}
	public void setReportId(int reportId) {
		this.reportId = reportId;
	}
	public ClubMember(String userId, String clubName, int reportId) {
		super();
		this.userId = userId;
		this.clubName = clubName;
		this.reportId = reportId;
	}
	public ClubMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
}
