<! --@ author Asfak Rahaman  -->
<! --It is for users to search the events by event date->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Event search by name</title>
<script type="text/javascript">

function datevalidate() {
    var startDate = document.getElementById("startDate").value;
    var endDate = document.getElementById("endDate").value;

    if ((Date.parse(startDate) >= Date.parse(endDate))) {
        alert("End date should be greater than Start date");
        document.getElementById("EndDate").value = "";
    }
}
</script>
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
<body background="images/17.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

	<h1>
		<font color="white"><center>Events Search By Date :</center></font>
	</h1>
	<br>
	<br>
	<div align="center">
		<form id="login-form" action="showuser_event_searchByDate1" method="post" modelAttribute="events">
			<div class="form-group">
				<h1 class="text-center text-info">
					<font color="white"> Date </font><br>
				</h1>
				<table>
					<tr>
						<td><h1 class="text-center text-info">
								<font color="white">From</font>
							</h1></td>
						<td><input type="date" name="startDate" id="startDate" class="form-control"></td>
						<td><h1 class="text-center text-info">
								<font color="white">To</font>
							</h1></td>
						<td><input type="date" name="endDate" id="endDate" class="form-control" onchange="datevalidate()"></td>
					</tr>
				</table>
				<br> <a href="user_event_info"><center>
						<input type="submit" name="submit" class="btn btn-info btn-md"
							value="Search">
					</center></a>
			</div>
		</form>
	</div>
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
		</tr>
		<c:forEach var="e" items="${events}">
			<tr>
				<td>${e.eventId}</td>
				<td>${e.eventName}</td>
				<td>${e.startDate}</td>
				<td>${e.endDate}</td>
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


