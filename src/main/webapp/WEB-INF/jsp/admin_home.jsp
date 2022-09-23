<! --@ author Prasanth Bhimana -->
<! --It is the home page for admin to show different activities like clubs,events,ideas,services-->
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
<title>Admin home page</title>
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
</head>

<body background="images/ll1.jpeg">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item">
        <a class="nav-link" href="show_admin_event_info">Events</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="show_admin_idea_info">Ideas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="user_club">Clubs</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="show_admin_service_info">Service</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Complaint</a>
      </li>
    </ul>
    <form:form action="logoutAdmin" method="post" modelAttribute="admin">
  		<button type="submit" class="btn btn-info btn-md col-sm-1" style="float:right" id="logout" value="/logout">Log Out</button>
	</form:form>
  </div>
</nav>
<br>
<center><h1><font color="white">UNIVERSITY WEBSITE</font></h1></center><br><br>
	
	<h4 align="center"><font color="#99ff66">${eventstatus}</font></h4>
	<h4 align="center"><font color="#99ff66">${servicestatus}</font></h4>
	<h4 align="center"><font color="#99ff66">${updatestatus}</font></h4>
	<h4 align="center"><font color="#99ff66">${resolutionmsg}</font></h4>
	<h4 align="center"><font color="#99ff66">${ideastatus}</font></h4>
	<h4 align="center"><font color="#99ff66">${ideaUpdates}</font></h4>
	<h4 align="center"><font color="#99ff66">${clubstatus}</font></h4>
	
			<div class="col-sm-3" style="float:left" style="padding:10px;">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title" align="center">Events</h2>
						<p class="card-text"></p>
						<center>
						Admin can create and delete Events.<br><br>
						<font size="4"><a href="show_admin_event_info" class="btn btn-primary">Create</a></font>&nbsp;&nbsp;&nbsp;
						<font size="4"><a href="show_admin_event_deleteinfo" class="btn btn-primary">Delete</a></font>
						</center>
						
					</div>
				</div>
			</div>
			<div class="col-sm-3" style="float:left">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title" align="center">Ideas</h2>
						<p class="card-text"></p>
						<center>
						Admin can create and update Ideas.<br><br>
						<font size="4"><a href="show_admin_idea_info" class="btn btn-primary">Create</a></font>&nbsp;&nbsp;&nbsp;
						<font size="4"><a href="show_admin_update_idea_info" class="btn btn-primary">Update</a></font>
						</center>
						
					</div>
				</div>
			</div>
			<div class="col-sm-3" style="float:left">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title" align="center">Clubs</h2>
						<p class="card-text"></p>
						<center>
						Admin can create and delete Clubs.<br><br>
						<font size="4"><a href="show_admin_club_info" class="btn btn-primary">Create</a></font>&nbsp;&nbsp;&nbsp;
						<font size="4"><a href="show_admin_club_deleteinfo" class="btn btn-primary">Delete</a></font>&nbsp;&nbsp;&nbsp;<br><br>
						<font size="4"><a href="show_admin_club_removeinfo" class="btn btn-primary">Update/Remove</a></font>
						
						</center>
						
					</div>
				</div>
			</div>
			<div class="col-sm-3" style="float:left">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title" align="center">Services</h2>
						<p class="card-text"></p>
						<center>
						Admin can create and update Services.<br><br>
						<font size="4"><a href="show_admin_service_info" class="btn btn-primary">Create</a></font>&nbsp;&nbsp;&nbsp;
						<font size="4"><a href="show_admin_update_service_info" class="btn btn-primary">Update</a></font>&nbsp;&nbsp;&nbsp;
						<font size="4"><a href="show_admin_report_service_info" class="btn btn-primary">Report</a></font>
						</center>
						
					</div>
				</div>
			</div>
		<br><br><br><br><br><br>
		<div class="fixed-bottom">	
		<table style="padding:15px;">
			<tr style="padding:15px;">
				<td style="padding:15px;"><h3><font color="#ffff66">View All Complaints Here </font></h3></td>
				<td style="padding:15px;"><font size="4"><form:form action="show_admin_help_service_info2"><button type="submit">
				View</button></form:form></font></td>
			</tr>
		</table>
		</div>	
			<br><br><br><br><br><br>
			<div class="col-sm-4" class="fixed-bottom" style="float:right; padding:15px;">
				<div class="card">
					<div class="card-body">
					<center>
						<h2 class="card-title">Share</h2>
						<p class="card-text">
							You can share using Google and Facebook.<br><br>
							<a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1&navigationDirection=forward">
							<img src="images/gog.png"  height="100" width="100"></a>&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="http://www.facebook.com"><img src="images/face1.jpg"  height="100" width="100"></a>
						</p>
					</center>
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