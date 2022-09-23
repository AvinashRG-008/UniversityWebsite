<! --@ author Avinash R G  -->
<! --It is for users to participate the events,clubs and share their ideas and join services and register a complaint->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User home page</title>
<link href="css/userhomel_style.css" rel="stylesheet" type="text/css" media="all">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"/>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
td {
padding: 10px;
}
</style>
</head>

<body background="images/bg4.jpg">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item">
        <a class="nav-link" href="user_events">Events</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_ideas">Ideas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_club">Clubs</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_volunteer">Service</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_registercomplain">Complaint</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_help">Help</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"><font size="4" color="#ff884d">${username}</font></a>
      </li>
    </ul>
    <form:form action="logout" method="post" modelAttribute="user">
  	<button type="submit" class="btn btn-info btn-md col-sm-1" style="float:right" id="logout" value="/logout">Log Out</button>
		
  </div>
</nav>
<br>
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

	  <br><table align="center">
	   		<tr>
                <td><h3><font color="white">EVENTS</font></h3></td>
                <td><h3><font color="white">IDEAS</font></h3></td>
                <td><h3><font color="white">CLUBS</font></h3></td>
            </tr>
            <tr>
                <td><a href="user_events"><img alt="" src="images/events.jpg" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><a href="user_ideas"><img alt="" src="images/idea2.png" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><a href="user_club"><img alt="" src="images/Clubs.jpg" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
            	<td><h3><font color="white">SOCIAL SERVICE</font></h3></td>
                <td><h3><font color="white">COMPLAINT</font></h3></td>
                <td><h3><font color="white">HELP</font></h3></td>
            </tr>
            <tr>
            	<td><a href="user_volunteer"><img alt="" src="images/social.png" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><a href="user_registercomplain"><img alt="" src="images/complain.jpg" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><a href="user_help"><img alt="" src="images/help5.jpg" padding-32" width="250" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
	</form:form>
	<br><br><br>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>

 <!-- <tr>
            	<td>EVENTS</td>
                <td><a href="user_events"><img alt="" src="images/events.jpg" padding-32" width="300" height="300"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
            	<td>IDEAS</td>
            	<td><a href="user_ideas"><img alt="" src="images/idea2.png" padding-32" width="300" height="300"></a></td>
            </tr>
            <tr>
            	<td>COMPLAINTS</td>
            	<td><a href="user_registercomplain"><img alt="" src="images/complain.jpg" padding-32" width="300" height="300"></a></td>
            </tr>
            <tr>
            	<td>HELP</td>
            	<td><a href="user_help"><img alt="" src="images/help5.jpg" padding-32" width="300" height="300"></a></td>
            </tr>
            <tr>
            	<td>SERIVES</td>
           		<td><a href="user_volunteer"><img alt="" src="images/service.jpg" padding-32" width="300" height="300"></a></td>
            </tr> 
-->
