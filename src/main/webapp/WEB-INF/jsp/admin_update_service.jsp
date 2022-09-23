<! --@ author Asfak Rahaman  -->
<! --It is for admin to update the service for the users to volunteer the service-->
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
<title>Update Service</title>
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
<script>
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
</script> <script src="//code.jquery.com/jquery-2.1.3.min.js"></script> <!------ Include the above in your HEAD tag ---------->

</head>
<body  background="images/s5.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<form:form action="updateAdminService" method="post" modelAttribute="services">
	<button type="submit" class="btn btn-info btn-md col-sm-1"
		style="float: right" id="logout">Log Out</button>
	<h1>
		<font size="10" color="white">
			<center>Update Service</center>
	</font>
	</h1>
<table cellspacing="4">
                  <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp Service Id &nbsp &nbsp </font> </h1>
                  <td> <form:input path="serviceId" id="serviceid" class="form-control"/></td>
              		</td>
                  </tr>
                <td> <h1 > <font  color="white"> &nbsp &nbsp Service Name &nbsp &nbsp </font></h1>
                  
                  <td> <form:input path="serviceName" id="servicename" class="form-control"/></td>
                 </td>
                  </tr>
                
                   <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp No Of Volunteer Required &nbsp &nbsp </font></h1>
                   <td> <form:input path="volunteerRequired" id="volunteerrequired" class="form-control"/></td>
                  </td>
                  </tr>
                  
                   <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp Seats Available &nbsp &nbsp </font></h1>
                   <td> <form:input path="seatsAvailable" id="seatsavailable" class="form-control"/></td>
                  </td>
                  </tr>
                  
                  </table>  
                  </br>
                  <button type="submit" class="btn btn-info btn-md col-sm-1" id="submit">Submit</button>
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
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>