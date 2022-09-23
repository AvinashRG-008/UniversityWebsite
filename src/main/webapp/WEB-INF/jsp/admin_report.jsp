<! --@ author Amrit Sagar Khuntia -->
<! --It is for admin to generate the report for the services registered by the user -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%Object userId=session.getAttribute("userId") ;
if(userId==null)
{
   response.sendRedirect("admin_login");
}
%>

   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report List</title>
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
			<font color="#FFFFFF">Report List:</font>
		</center>
	</h1>
	<br>
	<br>
	<h4 align="center"><font color="red">${status}</font></h4>
	
	<table align="center">
		<tr>
			<td><font color="white">Service Name</font></td>
			<td><font color="white">User Id</font></td>
		</tr>
		
		<c:forEach var="e" items="${reportList}">
			<tr>
				<td>${e.serviceName}</td>
				<td>${e.userId}</td>
			</tr>
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
        
        <small><font size="1" color="black">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>