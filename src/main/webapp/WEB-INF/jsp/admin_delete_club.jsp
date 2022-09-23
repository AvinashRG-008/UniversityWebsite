<! --@ author Avinash R G -->
<! --It is for admin to delete different clubs-->
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
<title>Delete Event</title>
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
<style>
#ex1 {
  margin-left: 400px;
  margin-top:100px;
}
#ex2 {
  margin-left: 50px;
  margin-top:100px;
}
#ex3 {
  margin-left: 800px;
  margin-top:50px;
}
</style>
</head>
<body  background="images/event6.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<form:form action="deleteAdminClub" method="post" modelAttribute="clubs">
	<h1>
		<font size="10" color="white">
			<center>Delete Club</center>
	</font>
	</h1>
<table cellspacing="4">
                  <tr>
                  <td> <h2 id="ex1"> <font  color="white">Club Name</font></h1>
                  </td>
                  <td> <form:input path="clubName" id="ex2" class="form-control"/></td>
                  </table>  
                  </br>
                  <button type="submit" id="ex3" class="btn btn-info btn-md col-sm-1" id="submit">Submit</button>
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