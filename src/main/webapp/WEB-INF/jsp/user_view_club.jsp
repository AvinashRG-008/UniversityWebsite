<! --@ author Asfak Rahaman  -->
<! --It is for users to view the different clubs that are available in university->
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
<title>Club Service</title>
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
			<font color="#FFFFFF">Club</font>
		</center>
	</h1>
	<br>
	<h4 align="center"><font color="green">${clubUpdates}</font></h4>
	<h4 align="center"><font color="#99ff66">${registerstatus}</font></h4>
	<br>
		<table align="center">
			<tr>
			
			<td><font color="white">Club Name</font></td>
			<td><font color="white">Description</font></td>
			<td><font color="white">Join</font></td>
			<td><font color="white">Leave</font></td>
			<td><font color="white">Submission</font></td>
			</tr>
		
			<c:forEach var="s" items="${clubList}">
			<form:form action="saveClubDetails" method="get"  modelAttribute="clubs">
				<tr>
					<td><form:input path="clubName"   name="clubName"  value="${s.clubName}"/></td>
					<td>  <form:textarea path="description" rows = "3" cols = "30" name = "clubName" placeholder="${s.description}"></form:textarea></td>
					<td><font color="white"><form:radiobutton path="status" value="join"/></font>&nbsp;<i style="color:green;" class="fa fa-thumbs-up fa-3x"></i></td>
					<td><font color="white"><form:radiobutton path="status" value="leave"/></font>&nbsp;<i style="color:red;" class="fa fa-thumbs-down fa-3x"></i></td>
					<td>
					<input type="submit" name="submit" value="Submit">
					</td>
				</tr>
			</form:form>
			</c:forEach>
			
		</table>
</body>
<br>
<br>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>