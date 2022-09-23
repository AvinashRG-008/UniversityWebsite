package com.cts.University.model;

/*
 * @Author Prasanth Bhimana
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Complains {
	@Id
@GeneratedValue(strategy = GenerationType.AUTO)
	private int complainId;
	@NotEmpty(message = "Complain Topic must be entered")
	private String complainTopic;
	@NotEmpty(message = "Complain SubTopic must be entered")
	private String complainSubTopic;
	@NotEmpty(message = "Complain Description must be entered")
	private String complainDescription;
	@NotEmpty(message = "Complain Suggetion must be entered")
	private String complainsuggetion;
	
	//Getters and setters for registering a new complaint

	public int getComplainId() {
		return complainId;
	}

	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}

	public String getComplainTopic() {
		return complainTopic;
	}

	public void setComplainTopic(String complainTopic) {
		this.complainTopic = complainTopic;
	}

	public String getComplainSubTopic() {
		return complainSubTopic;
	}

	public void setComplainSubTopic(String complainSubTopic) {
		this.complainSubTopic = complainSubTopic;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public String getComplainsuggetion() {
		return complainsuggetion;
	}

	public void setComplainsuggetion(String complainsuggetion) {
		this.complainsuggetion = complainsuggetion;
	}

	@Override
	public String toString() {
		return "Complains [complainId=" + complainId + ", complainTopic=" + complainTopic + ", complainSubTopic="
				+ complainSubTopic + ", complainDescription=" + complainDescription + ", complainsuggetion="
				+ complainsuggetion + "]";
	}

}
