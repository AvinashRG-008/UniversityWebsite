<! --It is for user to signout from the home page->
<% session.invalidate();
response.sendRedirect("user_login");

%>

