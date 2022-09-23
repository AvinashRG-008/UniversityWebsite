package com.cts.University.model;

/*
 * @Author Avinash R G
 */
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Ideas {
	
	@Id
	 @NotEmpty(message = "IdeaName must be entered")
	private String ideaName;
	private String vote;
	private String comment;
	
	//Getters and setters for users to vote and comment an idea
	public String getIdeaName() {
		return ideaName;
	}
	public void setIdeaName(String ideaName) {
		this.ideaName = ideaName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getVote() {
		return vote;
	}
	public void setVote(String vote) {
		this.vote = vote;
	}
	@Override
	public String toString() {
		return "Ideas [ideaName=" + ideaName + ", vote=" + vote + ", comment=" + comment + "]";
	}
	
	

}
