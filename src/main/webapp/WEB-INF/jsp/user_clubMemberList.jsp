<! --@ author Asfak Rahaman  -->
<! --It is for users to show the no of club members available in the each club->
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
<title>Club Member</title>
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
			<font color="#FFFFFF">Club Member List</font>
		</center>
	</h1>
	<br>
	<br>
	<h4 align="center"><font color="green">${clubstatus}</font></h4>
	<h4 align="center"><font color="#99ff66">${registerstatus}</font></h4>
	<br>
	<br>
		<table align="center">
			<tr>
			
			
			<td><font color="white">User Name</font></td>
			<td><font color="white">Designation</font></td>
			</tr>
		
			<c:forEach var="s" items="${clubMemberList}">
				<tr>
					<td>${s.userId}</td>
					<td>${s.designation}</td>
				</tr>
			
			</c:forEach>
			
		</table>
</body>
<br>
<br>
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