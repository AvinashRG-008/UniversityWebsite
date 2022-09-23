<! --@ author Avinash R G -->
<! --It is for admin to update the idea provided by the user-->
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
<title>Volunteer Service</title>
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
<body background="images/26.png">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<<h1>
		<center>
			<font color="#FFFFFF">Ideas</font>
		</center>
	</h1>
	<br>
	<br>
	
		<table align="center">
			<tr>
			
			<td><font color="white">Idea Name</font></td>
			<td><font color="white">Comments</font></td>
			<td><font color="white">Submission</font></td>
			</tr>
		
			<c:forEach var="s" items="${ideaList}">
			<form:form action="show_admin_update_idea_info1" method="post"  modelAttribute="ideas">
				<tr>
					<td><form:input path="ideaName"   name="ideaName"  value="${s.ideaName}"/></td>
					<td>  <form:textarea path="comment" value="${comment}" rows = "5" cols = "50" name = "comment" placeholder="enter comments"></form:textarea></td>
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