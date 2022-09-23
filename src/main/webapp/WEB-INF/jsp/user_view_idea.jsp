<! --@ author Avinash R G  -->
<! --It is for users to view the ideas which are submitted by the other users->
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
<title>Volunteer Service</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="../lib/w3.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
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
<body background="images/26.png">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
	<h1>
		<center>
		<br>
			<font color="#FFFFFF">Ideas</font>
		</center>
	</h1>
	<br>
	<h4 align="center"><font color="green">${ideaUpdates}</font></h4>
	<h4 align="center"><font color="#99ff66">${registerstatus}</font></h4>
	<br>
	<br>
		<table align="center">
			<tr>
			<td><font color="white">Idea Name</font></td>
			<td><font color="white">UpVote</font></td>
			<td><font color="white">DownVote</font></td>
			<td><font color="white">Comments</font></td>
			<td><font color="white">Submission</font></td>
			</tr>
		
			<c:forEach var="s" items="${ideasList}">
			<form:form action="saveIdeaComment" method="get"  modelAttribute="ideas">
				<tr>
					<td><form:input path="ideaName"   name="ideaName"  value="${s.ideaName}"/></td>
					<td><font color="white"><form:radiobutton path="vote" value="like"/></font>&nbsp;<i style="color:green;" class="fa fa-thumbs-up fa-3x"></i></td>
					<td><font color="white"><form:radiobutton path="vote" value="dislike"/></font>&nbsp;<i style="color:red;" class="fa fa-thumbs-down fa-3x"></i></td>
					<td>  <form:textarea path="comment" value="${comment}" rows = "3" cols = "30" name = "comment" placeholder="enter comments"></form:textarea></td>
					<td>
					<input type="submit" name="submit" value="Submit">
					</td>
				</tr>
			</form:form>
			</c:forEach>
			
		</table>
</body>
<br>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>