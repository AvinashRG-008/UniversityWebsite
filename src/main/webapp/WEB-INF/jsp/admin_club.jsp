<! --@ author Avinash R G -->
<! --It is for admin to add,delete and update clubs-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%Object userId=session.getAttribute("userId") ;
if(userId==null)
{
   response.sendRedirect("admin_login");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Club</title>
<link href="css/userhomel_style.css" rel="stylesheet" type="text/css"
	media="all">
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
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
</head>
<body background="images/ll.jpeg">
	<center>
		<h1>
			<font color="white">Admin Club Page
		</h1>
	</center>
	</font>
<br><br><br>
		<div class="row">
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title">Admin Creat Clubs</h2>
						<p class="card-text">Admin can creat any clubs</p>
						<a href="#" class="btn btn-primary">Create</a>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title">Admin Delete Clubs</h2>
						<p class="card-text">Admin can Delete any clubs</p>
						<a href="#" class="btn btn-primary">Delete</a>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title">Admin Update Clubs</h2>
						<p class="card-text">Admin can update any Clubs</p>
						<a href="#" class="btn btn-primary">Update</a>
					</div>
				</div>
			</div>
		</div>
	
</body>
</html>