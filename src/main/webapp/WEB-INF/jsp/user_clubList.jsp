<! --@ author Asfak Rahaman  -->
<! --It is for user to show the available clubs->
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
<title>Club List</title>
<link
     href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
     rel="stylesheet" id="bootstrap-css">
<script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
     src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
th, td {
     padding: 12px;
}

table {
     border-spacing: 2px;
}
</style>
</head>
<body background="images/25.jpg">
<center><h1><font size="15" color="white">UNIVERSITY WEBSITE</font></h1></center><br>
    <br> <h1>
		<font size="10" color="white">
			<center>User Joined Club Page</center>
	</font>
	</h1>
	<br>
     <table align="center">
           <tr>
                <td><font size="6" color="white">Club Name</font></td>
           </tr>
           <c:forEach var="e" items="${clubList}">
                <tr>
                     <td align="center"><font size="5"><a href="showuser_club_otherMember1?clubName=${e.clubName}" style="color:lightblue">${e.clubName}</a></font></td>
                   
                </tr>
           </c:forEach>
     </table>
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
        
        <small><font size="1" color="black">&copy; 2022 Copyrights, Designed and Developed by Avinash,Asfak,Prasanth,Adnaan,Amrit</strong></p>
        </font></small><br>
        
    </center>
</footer> 
</html>
