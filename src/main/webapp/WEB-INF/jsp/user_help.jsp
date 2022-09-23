<! --@ author Amrit Sagar Khuntia  -->
<! --It is for users to show the university help page->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%Object userId=session.getAttribute("userId") ;
if(userId==null)
{
   response.sendRedirect("user_login");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/user_help.css">
<!------ Include the above in your HEAD tag ---------->
<title>Help</title>
</head>
<body background="images/h1.jpeg">
<br>
<h1><font size="15" color="white">
		<center>WELCOME TO UNIVERSITY WEBSITE HELP PAGE</center>
	</font></h1>
	<h4 align="center"><font color="#99ff66">${issuestatus}</font></h4>
<table align="center">
 			<nav class="navbar navbar-expand-lg">
            <tr class="navbar-nav">
                <td class="active" font color="yellow"> <a href="user_home" class="nav-link"><font color="Maroon">Home</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="nav-item"><a href="user_issue" class="nav-link"><font color="Maroon">Issue</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="nav-item"><a href="user_contact" class="nav-link"><font color="Maroon">Contact Us</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="nav-item"><a href="user_search" class="nav-link"><font color="Maroon">How to Search</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            	<td class="nav-item"><a href="user_resolution1" class="nav-link"><font color="Maroon">Resolution</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
             	
            </tr>
            </nav>
        </table>




</body>
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