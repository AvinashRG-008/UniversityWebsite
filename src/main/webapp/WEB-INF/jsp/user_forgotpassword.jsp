<! --@ author Adnaan Shahab I  -->
<! --It is for users to create a new password when he forgot the password->
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
<title>Forget Password</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body background="images/ll1.jpeg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>


	<div id="login">
		<h3 class="text-center text-white pt-5">Forget Password</h3>
		<br>
		<h4 align="center"><font color="red">${msg}</font></h4>
		<h4 align="center"><font color="#99ff66">${userid}</font></h4>
		<br>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="submit_user_forgotuserpassword" method="post">
							<!--   <h3 class="text-center text-info">Login</h3>-->
							<div class="row">
								<table>
									<tr>
										<div class="form-group">
											<td><label  class="col-sm-7 control-label"><font
													color="white">User ID</font></label>
										</div>
										</td>
										<td>
											<div class="col-sm-18">
												<input type="userId"  name="userId" id="number"
													placeholder="User ID" class="form-control" />
											</div>
										</td>
										<td>
											<div id="register-link" class="text-right"></div>
											<input type="submit" name="submit"
												class="btn btn-info btn-md" value="Submit">
										</td>
									</tr>
									</div>
									<br>
										

</form>

<form id="login-form" class="form" action="submitSecQueAns1" method="post">

<input type="hidden"  name="userId" value="${userId}"  readonly  class="form-control" />
									<tr>
										<div class="form-group">
											<td><label for="question" class="col-sm-7 control-label"><font
													color="white">Secret Question1</font></label>
										</div>
										</td>
										<td>
											<div class="col-sm-18">
									<input type="text"  name="question1" value="${q1}"  readonly  class="form-control" />
									<input type="text"  name="ans1"  placeholder=""  class="form-control" />
											</div>
										</td>
										<td>
											<div id="register-link" class="text-right"></div>
										</td>
									</tr>
									</div>
									<br>


									<tr>
										<div class="form-group">
											<td><label  class="col-sm-7 control-label"><font
													color="white">Secret Question2</font></label>
										</div>
										</td>
										<td>
											<div class="col-sm-18">
											<input type="text"  name="question2" value="${q2}" readonly class="form-control" />
										<input type="text"  name="ans2"  placeholder="" class="form-control" />		
											</div>
										</td>
										<td>
											<div id="register-link" class="text-right"></div>
										</td>

										<br>
									<tr>
										<div class="form-group">
											<td><label for="question" class="col-sm-7 control-label"><font
													color="white">Secret Question3</font></label>
										</div>
										</td>
										<td>
											<div class="col-sm-18">
									<input type="text"  name="question3" value="${q3}" readonly class="form-control" />
									<input type="text"  name="ans3"  placeholder=""  class="form-control" />			
											</div>
										</td>
										<td>
											<div id="register-link" class="text-right"></div>
										</td>
										</td>
								</table>
							</div>
							<br>
							<br>

							<td><div class="form-group">
									<tr>
										<center>
											<input type="submit" name="submit"
												class="btn btn-info btn-md" value="Submit">
										</center>
								</div>
							</tr>
							<br>
							<br>

							</table>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div> 
	
	
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 

</html>
