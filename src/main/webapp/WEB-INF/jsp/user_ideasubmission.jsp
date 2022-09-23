<! --@ author Adnaan Shahab I  -->
<! --It is for users to submit an idea->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Idea Submission</title>
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
<body background="images/23.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<form:form action="saveIdea" method="post" modelAttribute="ideaSubmission">
	<h1>
		<font size="20" color="white"><center>IDEA SUBMISSION</center></font>
	</h1>
	<br><br><br><br>
	<h4 align="center"><font color="#99ff66">${registerstatus}</font></h4>

	<div class="form-group" >
				<label for="Topic" class="col-sm-3 control-label"><font size="6" color="white">Idea Topic</font></label>
				<div class="col-sm-3">
					<form:input path="ideaTopic" id="idea"
						placeholder="Enter the topic of your Idea" class="form-control" autofocus="" />
						 <span style="color:red"><form:errors path="ideaTopic"></form:errors></span>
				</div>
		</div>
	<br><br>
  <br>	<br>
	<div class="form-group" >
				<label for="Topic" class="col-sm-3 control-label"><font size="6" color="white">Idea Description</font></label>
				<div class="col-sm-5">
					<form:textarea path="ideaDescription" rows="4" cols="50"  placeholder="Enter Idea Description"></form:textarea>
					 <span style="color:red"><form:errors path="ideaDescription"></form:errors></span>
				</div>
			</div>
			
			<br><br><br><br><br><br>
    <div class="form-group">
                               <center><input type="submit" name="submit" class="btn btn-info btn-md" value="Submit"></center>
                           </div>
	<h2><font size="6" color="white">Share</h2>

    <a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1&navigationDirection=forward">
	<img src="images/gog.png"  height="100" width="100">
	</a>&nbsp;&nbsp;&nbsp;&nbsp;


    <a href="http://www.facebook.com">
	<img src="images/face1.jpg"  height="100" width="100">
	</a>&nbsp;&nbsp;&nbsp;&nbsp;
	</form:form>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>