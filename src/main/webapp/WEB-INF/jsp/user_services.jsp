<! --@ author Adnaan Shahab I  -->
<! --It is for users to join the service and it show the seats available and volunteers required->
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
<title>Services</title>
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
<body background="images/ll.jpeg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

     <h1>
		<font size="10" color="white">
			<center>Services</center>
	</font>
	</h1>
	<br><br>
     <table align="center">
           <tr>
                <td>Service Name</td>
                <td>Volunteer Required</td>
                <td>Seats Available</td>
                <td>Register</td>
           </tr>
           <c:forEach var="s" items="${services}">
                <tr>
                	<td>${s.serviceName}</td>
					<td>${s.volunteerRequired}</td>
					<td>${s.seatsAvailable}</td>
                    <td><form:form action="admin_help_service_info1"><button type="submit">Register</button></form:form></td>
                </tr>
           </c:forEach>
     </table>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>

