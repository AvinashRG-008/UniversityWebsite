package com.cts.University.model;

/*
 * @Author Avinash R G
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
@Entity

public class User {
                @Id
                @Pattern(regexp = "^[a-zA-Z0-9_+&-]+(?:\\." + "[a-zA-Z0-9_+&-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
            			+ "A-Z]{2,7}$", message = "*Email Id should be in proper format")
                @NotEmpty(message = "Email Id cannot be empty")
                private String userId;
    
                @NotEmpty(message = "First Name cannot be empty")
                private String firstname;
                
                @NotEmpty(message = "Last Name cannot be empty")
                private String lastName;
                
                @Pattern(regexp = "[1-9][0-9]", message = "*Age should be between 10-99")
                @NotEmpty(message = "Age cannot be empty")
                private String age;
                
                @NotEmpty(message = "Gender cannot be empty")
                private String gender;
                
                @Column(name="contactnumber")
                @Pattern(regexp = "[7-9]{1}[0-9]{9}", message = "*Enter a valid contact number")
                @NotEmpty(message = "Contact Number cannot be empty")
                private String contactNumber;
                
                @NotEmpty(message="Password cannot be empty")
                private String password;
                
                @NotEmpty(message="Answer cannot be empty")
                private String answer1;
                @NotEmpty(message="Answer cannot be empty")
                private String answer2;
                @NotEmpty(message="Answer cannot be empty")
                private String answer3;
                
                @NotEmpty(message="Secret question cannot be empty")
                private String question1;
                @NotEmpty(message="Secret question cannot be empty")
                private String question2;
                @NotEmpty(message="Secret question cannot be empty")
                private String question3;
                
              //Getters and setters for validation of user in registration page
                
				public String getAnswer1() {
                                return answer1;
                }

                public void setAnswer1(String answer1) {
                                this.answer1 = answer1;
                }

                public String getAnswer2() {
                                return answer2;
                }

                public void setAnswer2(String answer2) {
                                this.answer2 = answer2;
                }

                public String getAnswer3() {
                                return answer3;
                }

                public void setAnswer3(String answer3) {
                                this.answer3 = answer3;
                }
                
                public String getFirstname() {
                                return firstname;
                }

                public void setFirstname(String firstname) {
                                this.firstname = firstname;
                }

                public String getLastName() {
                                return lastName;
                }

                public void setLastName(String lastName) {
                                this.lastName = lastName;
                }

                public String getAge() {
					return age;
				}

				public void setAge(String age) {
					this.age = age;
				}

				public String getGender() {
                                return gender;
                }

                public void setGender(String gender) {
                                this.gender = gender;
                }

                public String getContactNumber() {
                                return contactNumber;
                }

                public void setContactNumber(String contactNumber) {
                                this.contactNumber = contactNumber;
                }

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

                public String getQuestion1() {
                                return question1;
                }

                public void setQuestion1(String question1) {
                                this.question1 = question1;
                }

                public String getQuestion2() {
                                return question2;
                }

                public void setQuestion2(String question2) {
                                this.question2 = question2;
                }

                public String getQuestion3() {
                                return question3;
                }

                public void setQuestion3(String question3) {
                                this.question3 = question3;
                }

				@Override
				public String toString() {
					return "User [userId=" + userId + ", firstname=" + firstname + ", lastName=" + lastName + ", age="
							+ age + ", gender=" + gender + ", contactNumber=" + contactNumber + ", password=" + password
							+ ", answer1=" + answer1 + ", answer2=" + answer2 + ", answer3=" + answer3 + ", question1="
							+ question1 + ", question2=" + question2 + ", question3=" + question3 + "]";
				}
                    
}
