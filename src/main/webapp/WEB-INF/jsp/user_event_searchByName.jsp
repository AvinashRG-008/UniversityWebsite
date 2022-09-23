<! --@ author Asfak Rahaman  -->
<! --It is for users to search the events by event name->
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
<title>Event search by name</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
table, th, td {
	border: 2px solid white;
}

th, td {
	padding: 20px;
	color: white;
	font-weight: bold;
}

table {
	border-spacing: 2px;
}
</style>
</head>
<body background="images/event5.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

<br>
	<h1>
		<center>
			<font color="white">Events Search By Names :</font>
		</center>
	</h1>
	<br>
	<br>
	<form id="login-form" action="showuser_event_searchByName1"
		method="get">
		<h2 class="text-center text-info">
			<label><font color="white">Event Name</font></label><br>
		</h2>
		<br>
		<center>
			<input type="text" name="eventName" id="eventName" size="50" />

		</center>
		<br>
		<center>
			<input type="submit" name="submit" class="btn btn-info btn-md"
				value="Search">
		</center>
	</form>
	<br>
	<h4 align="center"><font color="red">${status}</font></h4>
	<br>
	<br>
	<table align="center">
		<tr>
			<td>Event Id</td>
			<td>Event Name</td>
			<td>Start Date</td>
			<td>End Date</td>
			<td>Like</td>
			<td>Dislike</td>
			<td>Interested</td>
			<td>Disinterested</td>
			<td>Present</td>
			<td>Absent</td>
			<td>Comment</td>
			<td>Submit</td>
		</tr>
		
		<c:forEach var="e" items="${events}">
		<form:form action="saveUserEventComment" method="get"  modelAttribute="eventstatus">
			<tr>
				<td>${e.eventId}</td>
				<td>${e.eventName}</td>
				<td>${e.startDate}</td>
				<td>${e.endDate}</td>
				<form:hidden path="eventId" value="${e.eventId}"/>
				<form:hidden path="eventName" value="${e.eventName}"/>
				<form:hidden path="startDate" value="${e.startDate}"/>
				<form:hidden path="endDate" value="${e.endDate}"/>
	  		    <td><font color="white"><form:radiobutton path="choiceLike" value="like"/></font></td>
				<td><font color="white"><form:radiobutton path="choiceLike" value="dislike"/></font></td>
				<td><font color="white"><form:radiobutton path="choiceInterest" value="interested"/></font></td>
				<td><font color="white"><form:radiobutton path="choiceInterest" value="disinterested"/></font></td>
				<td><font color="white"><form:radiobutton path="attendance" value="present"/></font></td>
				<td><font color="white"><form:radiobutton path="attendance" value="absent"/></font></td>
				<td><form:textarea path="comment" value="${comment}" rows = "3" cols = "30" name = "comment" placeholder="Enter Comments..."></form:textarea></td>
				<td><input type="submit" name="submit" value="Submit"></td> 
			</tr>
		</form:form>
		</c:forEach>
	</table>
	<br><br>
&nbsp;&nbsp;&nbsp;<h3><font color="white">Share</font></h3>

&nbsp;&nbsp;&nbsp;<a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1&navigationDirection=forward">
<img src="images/gog.png"  height="100" width="100">
</a>&nbsp;&nbsp;&nbsp;&nbsp;


<a href="http://www.facebook.com">
<img src="images/face1.jpg"  height="100" width="100">
</a>&nbsp;&nbsp;&nbsp;&nbsp;	
<br><br>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>