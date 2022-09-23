<! --@ author Asfak Rahaman  -->
<! --It is for users to mark attendance and comment for the particular event conducted by the university->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVENTS INFORMATION</title>
<link href="css/user_info_style.css" rel="stylesheet" type="text/css" media="all">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>

</head>
<body  background="images/bg4.jpg" >;
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>

	<h1><font size="15" color="white">
		<center>
			EVENTS INFORMATION
			<center />
			</font>
	</h1>
	<table align="center">
		<div>
			<tr>
				<td><label for="eventsName" class="col-sm-3 control-label"><h2><font color="black">EVENT NAME </font></h2>
							</label></td>

				<td><input type="text" id="eventsName" class="form-control"
					autofocus></td>
			</tr>
		</div>
</table>
      <center>
		<label name="attendence"><h3>ATTENDENCE</h3></label>
		</br>
		<input type="radio" id="present" value="present" name="Attendence">PRESENT
	    <input type="radio" id="absent" value="absent" name="Attendence">ABSENT
		
		<label name="attendence"><h3>INTEREST</h3></label>
		</br>
		<input type="radio" id="intrested" value="yes" name="Intrest">INTERESTED
	    <input type="radio" id="notintrested" value="no" name="Intrest">NOT INTERESTED
	    <label name="attendence"><h3>LIKE</h3></label>
		</br>
		<input type="radio" id="like" value="like" name="Like">LIKE
	    <input type="radio" id="dislike" value="dislike" name="Like">DISLIKE
	    <label name="attendence"><h3>COMMENTS</h3></label>
	     <textarea class="form-control" rows="5" id="comment"></textarea>
	    </center>
</body>
<footer> 
    
    <center>
        
        <small><font size="1" color="white">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>