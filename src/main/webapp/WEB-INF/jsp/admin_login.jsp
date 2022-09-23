<! --@ author Prasanth Bhimana -->
<! --It is for admin to login with userId and password -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body background="images/login2.jpg">
<br>
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
    <div id="login">
        <h3 class="text-center text-white pt-5"><font color="white">Admin Login</font></h3><br>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                    <h4 align="center"><font color="red">${status}</font></h4>
                        <form:form id="login-form" class="form" action="validateadmin" method="post" modelAttribute="admin">  
                            <div class="form-group">
                                <label for="userId" class="text-info"><font color="white">Email ID:</font></label><br>
                                <form:input path="userId" name="userId" id="userId" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info"><font color="white">Password:</font></label><br>
                                <form:password path="password" name="password" id="password" class="form-control" />
                            </div>
                            <div class="form-group">
                            <br>
                               <center><input type="submit" name="submit" class="btn btn-info btn-md" value="Submit"></center>
                           </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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

