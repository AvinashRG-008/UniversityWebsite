<! --@ author Asfak Rahaman, Avinash R G  -->
<! --It is for users to convey their issues where admin can resolve it->
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
<title>Issue</title>
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
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
</script> <script src="//code.jquery.com/jquery-2.1.3.min.js"></script> <!------ Include the above in your HEAD tag ---------->
<style>
th, td {
	padding: 10px;
}
</style>
</head>
<body  background="images/help4.jpeg">
<form:form action="saveissue" method="post" modelAttribute="help">
	
	<h1>
		<font size="10" color="white">
			<center>User Issue Page</center>
	</font>

	</h1>
	<div class="col-sm-4" align="center">
<table cellspacing="4">
                  
                  <tr>
                  <td> <h3> <font  color="white">User Id</font></h3>
                  </td>
                  <td>  </br> <form:input path="userId"  name="userId"  value="${userId}"  class="form-control" /></td>              
                  </tr>
                
                  <tr>
                  <td> <h3> <font  color="white">Description</font></h3></td>
                  <td></br><form:input path="description"  name="description" class="form-control" /></td>              
                  </tr>
            
                  </table>  
                  </br>
                  <button type="submit" class="btn btn-info btn-md" id="submit">Submit</button>
                  </div>
                  <br><br><br><br><br><br><br><br><br><br><br><br>
         
              
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
<br>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>