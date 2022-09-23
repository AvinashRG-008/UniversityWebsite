package com.cts.University.model;
/*
 * @Author Adnaan Shahab I
 */
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

@Entity
public class IdeaSubmission {

	@Id
	@NotEmpty(message = "IdeaTopic must be entered")
	private String ideaTopic ;
	@NotEmpty(message = "IdeaDescription must be entered")
	private String ideaDescription ;
	
	//Getters and setters for users to submit an idea
	public String getIdeaTopic() {
		return ideaTopic;
	}
	public void setIdeaTopic(String ideaTopic) {
		this.ideaTopic = ideaTopic;
	}
	public String getIdeaDescription() {
		return ideaDescription;
	}
	public void setIdeaDescription(String ideaDescription) {
		this.ideaDescription = ideaDescription;
	}
	
	
	
}
