<! --@ author Amrit Sagar Khuntia  -->
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
<title>Help search by Id</title>
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
    <table align="center">
           <tr>
                <td><font color="black">Request Id</font></td>
           </tr>
           <c:forEach var="e" items="${requests}">
                <tr>
                     <td><font color="black"><a href="user_resolution2?requestId=${e.requestId}">${e.requestId}</a></font>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                   
                </tr>
           </c:forEach>
     </table>
</body>
</html>
