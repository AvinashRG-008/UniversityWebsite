<! --@ author Prasanth Bhimana -->
<! --It is for users to register a complaint->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%Object userId=session.getAttribute("userId") ;
if(userId==null)
{
   response.sendRedirect("user_login");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Page</title>
<link href="css/userhomel_style.css" rel="stylesheet" type="text/css"
	media="all">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body background="images/20.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>


	<form:form action="saveUserComplains" method="get"
		modelAttribute="complains">
		<center><h1>
			<font size="20" color="white">Register Complain</font>
		</h1></center>
		<h2 align="center"><font color="green">${msg}</font></h2>
		<br>
	
		<div>
			<label for="Topic" class="col-sm-3 control-label"><font
				size="5" color="white">Topic</font></label>

			<div class="col-sm-4">

				<form:select id="topic" name="topic" for="topic"
					path="complainTopic" class="col-sm-8 control-label">
					<font color="white">
						<form:option value="Faculty">Faculty</form:option>
						<form:option value="Infrastructure">Infrastructure</form:option>
						<form:option value="Student">Student</form:option>
						<form:option value="Others">Others</form:option>
					</font>
				</form:select>
			</div>
		</div>
	
<br><br><br>
		<div class="form-group">
			<label for="Topic" class="col-sm-3 control-label"><font
				size="5" color="white">Sub-Topic</font></label>
			<div class="col-sm-4">
				<form:input path="complainSubTopic" id="idea"
					placeholder="Enter Sub-topic here" class="col-sm-8 control-label"
					autofocus="" />
					 <span style="color:red"><form:errors path="complainSubTopic"></form:errors></span>
			</div>
		</div>
		<br>
		<br>
		<div class="form-group">
			<label for="Topic" class="col-sm-3 control-label"><font
				size="5" color="white">Description</font>
				</label>
			<div class="col-sm-4">
		 	
			
			<form:textarea path="complainDescription" id="idea" rows="3" cols="40"
					  placeholder="Enter Description here"></form:textarea>
					  <span style="color:red"><form:errors path="complainDescription"></form:errors></span>
	
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="form-group">
			<label for="Topic" class="col-sm-3 control-label"><font
				size="5" color="white">Suggestion</font></label>
			<div class="col-sm-6">
			  	<form:textarea path="complainsuggetion" rows="3" cols="40"
				placeholder="Enter Suggesion here "></form:textarea> 
			<span style="color:red"><form:errors path="complainsuggetion"></form:errors></span>

			</div>
		</div>

		<br>
		<br>
		<br>
		<br>
		<div class="form-group">
		<div class="col-sm-4">
		<center><input type="submit" name="submit" class="btn btn-info btn-md" value="Submit"></center>
		</div>
		</div>
	</form:form>
	
</body>
<br>
<br>
<br>
<br>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>