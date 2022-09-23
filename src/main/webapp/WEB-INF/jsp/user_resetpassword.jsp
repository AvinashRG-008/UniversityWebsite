<! --@ author Asfak Rahaman  -->
<! --It is for users to reset the password if they have forgot the password by answering the secret questions ->
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
<title>Reset Password</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--  <script>
function check(){
	alert("hi")

String pass1=document.getElementById("password").value
String pass2=document.getElementById("password1").value
if(pass1!=pass2){
alert("Both password not match");
return false;
}
}


</script>
-->
</head>

<body>

    <div id="login">
        <h3 class="text-center text-white pt-5">Reset Password</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="resetPassword" method="post" onsubmit="return check()">
                            <h3 class="text-center text-info">Reset Password</h3>
                             <h5 align="center"><font color="red">${status}</font></h5>
                            <div class="form-group">
                                <label for="password" class="text-info">New Password:</label><br>
                                <input type="password" name="resetPassword1" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Retype Password:</label><br>
                                <input type="password" name="resetPassword2" id="password1" class="form-control" >
                                <input type="hidden" name="userId" value="${user.getUserId()}"/>
                            </div>
                            <div class="form-group">
                               <center> <input type="submit" name="submit" class="btn btn-info btn-md" value="Submit"></center>
                           </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
</body>

</html>

