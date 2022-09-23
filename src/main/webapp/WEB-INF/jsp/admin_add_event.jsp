<! --@ author Asfak Rahaman -->
<! --It is for admin to add different events-->
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
<!DOCTYPE html>
<html>
<head>
<title>Add Event</title>
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
<scriptss
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
</script> <script src="//code.jquery.com/jquery-2.1.3.min.js"></script> <!------ Include the above in your HEAD tag ---------->

</head>
<body  background="images/event6.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<form:form action="saveAdminEvent" method="post" modelAttribute="events">
	
	<h1>
		<font size="7" color="white">
			<center>Add Events</center>
	</font>
	</h1>
<table cellspacing="4">
                  <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp Event Name &nbsp &nbsp </h1>
                  </td>
                  <td> <form:input path="eventName" id="eventname" class="form-control"/></td>
              
                  </tr>
                                  
                   <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp Start Date &nbsp &nbsp </h1>
                  </td>
                  <td>  <form:input path="startDate" name="startDate" id="startDate" class="form-control" type="date" /></td>
                   <td> <h1 > <font  color="white"> &nbsp &nbsp End Date &nbsp &nbsp </h1>
                  </td>
                  <td>  <form:input path="endDate" name="endDate" id="endDate" class="form-control" type="date" onchange="datevalidate()"/></td>
                  </tr>
                  </table>  
                  </br>
                  <button type="submit" class="btn btn-info btn-md col-sm-1" id="submit"> Submit</button>
</form:form>
</body>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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