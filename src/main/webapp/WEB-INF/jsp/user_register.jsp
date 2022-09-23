<! --@ author Avinash R G -->
<! --It is for users to register if they are new to the university->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<title>Registration Form</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/register_style.css">
</head>

<body background="images/ll1.jpeg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

	<div class="signup-form">
		<form:form action="saveUser" method="post" modelAttribute="user">
			<h2>Register</h2>
			<div class="form-group">
				<div class="row">
				<h4 align="center"><font color="red">${status}</font></h4>
					<div class="col-xs-6"><form:input path="firstname"  class="form-control" name="first_name"
							placeholder="First Name" />
					<span style="color:red"><form:errors path="firstname"></form:errors></span>
							</div>
					<div class="col-xs-6"><form:input path="lastName" class="form-control" name="last_name"
							placeholder="Last Name" />
							<span style="color:red"><form:errors path="lastName"></form:errors></span>
							</div>
				</div>
			</div>
			<div class="form-group">
				<form:input type="text" class="form-control" path="age" placeholder="Age"/>
					<span style="color:red"><form:errors path="age"></form:errors></span>
			</div>
			<div class="form-group">
				<label>Gender&nbsp;&nbsp;</label>
				<form:radiobutton  path="gender" value="male" /> Male &nbsp;
				<form:radiobutton  path="gender" value="female"/> Female &nbsp;
				<form:radiobutton path="gender" value="others"/> Others<br>
				<span style="color:red"><form:errors path="gender"></form:errors></span>
			</div>
			
			<div class="form-group">
				<form:input type="text" class="form-control" path="contactNumber" placeholder="Phone Number" />
					<span style="color:red"><form:errors path="contactNumber"></form:errors></span>
			</div>
			<div class="form-group">
				<form:input type="text" class="form-control" path="userId" placeholder="User Id (It must be a valid Email Id)"/>
				<span style="color:red"><form:errors path="userId"></form:errors></span>
			</div>
			<div class="form-group">
				<form:password class="form-control" path="password" placeholder="Password"/>
				<span style="color:red"><form:errors path="password"></form:errors></span>
			</div>
			
			<div class="form-group">
				<form:select  class="form-control" path="question1" id="question1">
				
					<form:option value="What is your mother's maiden name ?">What is your mother's maiden name ?</form:option>
					<form:option value="What was your first pet ?">What was your first pet ?</form:option>
					<form:option value="What was the model of your first car ?">What was the model of your first car ?</form:option>
					<form:option value="In which city were you born ?">In what city were you born ?</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:input path="answer1" class="form-control" name="answer1" placeholder="Answer"/>
				<span style="color:red"><form:errors path="answer1"></form:errors></span>
			</div>
			<div class="form-group">
				<form:select class="form-control" path="question2" id="question2">
					<form:option value="What was your father's middle name ?">What was your father's middle name ?</form:option>
					<form:option value="What was your childhood nickname ?">What was your childhood nickname ?</form:option>
					<form:option value="Which primary school did you attend ?">What primary school did you attend ?</form:option>
					<form:option value="What are the last five digits of your Aadhar card number ?">What are the last five digits of your Aadhar card number ?</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:input path="answer2" class="form-control" name="answer1" placeholder="Answer" />
				<span style="color:red"><form:errors path="answer2"></form:errors></span>
			</div>
			<div class="form-group">
				<form:select class="form-control" path="question3" id="question3">
					<form:option value="What was the name of the company where you did first job ?">What was the name of the company where you had your first job ?</form:option>
					<form:option value="What was your favorite sport in high school ?">What was your favorite sport in high school ?</form:option>
					<form:option value="What was your favorite food as a child ?">What was your favorite food as a child ?</form:option>
					<form:option value="Who is your childhood favourite cartoon ?">Who is your childhood favourite cartoon ?</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:input path="answer3" class="form-control" name="answer1" placeholder="Answer" />
				<span style="color:red"><form:errors path="answer3"></form:errors></span>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
			</div>
		</form:form>
	</div>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 

</html>