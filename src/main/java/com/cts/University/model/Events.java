package com.cts.University.model;
/*
 * @Author Asfak Rahaman
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Events {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int eventId;
	private String eventName;
	private String startDate;
	private String endDate;
	private String attendance;
	private String choiceLike;
	private String choiceInterest;
	private String comment;
	
	//Getters and setters for user to participate in events
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getChoiceLike() {
		return choiceLike;
	}
	public void setChoiceLike(String choiceLike) {
		this.choiceLike = choiceLike;
	}
	public String getChoiceInterest() {
		return choiceInterest;
	}
	public void setChoiceInterest(String choiceInterest) {
		this.choiceInterest = choiceInterest;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	@Override
	public String toString() {
		return "Events [eventId=" + eventId + ", eventName=" + eventName + ", startDate=" + startDate + ", endDate="
				+ endDate + ", attendance=" + attendance + ", choiceLike=" + choiceLike + ", choiceInterest="
				+ choiceInterest + ", comment=" + comment + "]";
	}
	
}
