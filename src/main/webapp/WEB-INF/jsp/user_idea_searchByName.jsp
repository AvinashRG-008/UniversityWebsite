<! --@ author Avinash R G  -->
<! --It is for users to search the idea by idea name->
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
<title>Idea search by name</title>
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
<body background="images/ll.jpg">
<br>
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<br>
	<h1>
		<center>
			<font color="white">Idea Search By Names :</font>
		</center>
	</h1>
	<br>
	<br>
	<form id="login-form" action="showuser_idea_searchByName1"
		method="get">
		<h2 class="text-center text-info">
			<label><font color="white">Idea Name</font></label><br>
		</h2>
		<br>
		<center>
			<input type="text" name="ideaName" id="ideaName" size="50" />

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
	<table align="center">
		<tr>
			<td>Idea Name</td>
		</tr>
		
		<c:forEach var="e" items="${ideaList}">
			<tr>
				
				<td>${e.ideaName}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
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