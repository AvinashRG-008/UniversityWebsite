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
<title>Resolution</title>
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
<scriptss
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
</script> <script src="//code.jquery.com/jquery-2.1.3.min.js"></script> <!------ Include the above in your HEAD tag ---------->

</head>
<body  background="images/23.jpg">
<form:form action="save_user_resolution" method="post" modelAttribute="help">
	<button type="submit" class="btn btn-info btn-md col-sm-1"
		style="float: right" id="logout">Log Out</button>
	<h1>
		<font size="10" color="black">
			<center>User Resolution Page</center>
	</font>
	</h1>
<table cellspacing="4">
                  <tr>
                  <td> <h1 > <font  color="black">Request Id</h1>
                  </td>
                  <td> <input path="requestId" name="requestId" value="${rid}"  readonly="true"  class="form-control" /></td>
                  </tr>
                  
                  <tr>
                  <td> <h1> <font  color="black">User Id</h1>
                  </td>
                  <td>  </br> <input path="userId"  name="userId" value="${uid}"  readonly="true"  class="form-control" /></td>              
                  </tr>
                
                	<tr>
                  <td> <h1> <font  color="black">Description</h1>
                  </td>
                  <td>  </br> <input path="description"  name="description" value="${udis}"  readonly="true"  class="form-control" /></td>              
                  </tr>
                
                <tr>
                  <td> <h1> <font  color="black">Resolution</h1>
                  </td>
                  <td>  </br> <textarea path="resolution" value="${ures}" rows = "5" cols = "50" name = "resolution" readonly="true" placeholder="${ures}"></textarea></td>              
                  </tr>
                
                  </table>  
                  </br>
                  <button type="submit" class="btn btn-info btn-md col-sm-1" id="submit">Submit</button>
               
</form:form>
</body>
</html>