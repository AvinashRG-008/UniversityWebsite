<! --It is for admin to signout from the home page->
<%
session.invalidate();
response.sendRedirect("admin_login");
%>