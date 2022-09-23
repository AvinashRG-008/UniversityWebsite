<! --@ author Avinash R G -->
<! --It is for admin to give the resolution for complaint registered by the user-->
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
<title>Resolution</title>
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
<body  background="images/s9.png">
<center><h1><font size="10" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
<form:form action="save_admin_help_service_info" method="post" modelAttribute="help">
	<button type="submit" class="btn btn-info btn-md col-sm-1"
		style="float: right" id="logout">Log Out</button>
	<h1>
		<font size="6" color="white">
			<center>Admin Resolution Page</center>
	</font>
	</h1>
<table cellspacing="4">
                  <tr>
                  <td> <h1 > <font  color="white"> &nbsp &nbsp Request Id &nbsp &nbsp </h1>
                  </td>
                  <td> <form:input path="requestId" name="requestId" value="${rid}"  readonly="true"  class="form-control" /></td>
                  </tr>
                  
                  <tr>
                  <td> <h1> <font  color="white"> &nbsp &nbsp User Id &nbsp &nbsp  </h1>
                  </td>
                  <td>  </br> <form:input path="userId"  name="userId" value="${uid}"  readonly="true"  class="form-control" /></td>              
                  </tr>
                
                	<tr>
                  <td> <h1> <font  color="white"> &nbsp &nbsp Description &nbsp &nbsp </h1>
                  </td>
                  <td>  </br> <form:input path="description"  name="description" value="${udis}"  readonly="true"  class="form-control" /></td>              
                  </tr>
                
                <tr>
                  <td> <h1> <font  color="white"> &nbsp &nbsp Resolution &nbsp &nbsp </h1>
                  </td>
                  <td>  </br> <form:textarea path="resolution" value="${resolution}" rows = "5" cols = "50" name = "resolution" placeholder="enter solution"></form:textarea></td>              
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
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>