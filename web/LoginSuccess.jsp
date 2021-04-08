<%@page import="domain.User" %>
<jsp:useBean id="user" class="domain.User" scope="session"></jsp:useBean>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Success Page</title>
</head>
<body>
<%
//allow access only if session exists
if(session.getAttribute("user") == null){
	response.sendRedirect("UserLogin.jsp");
}else user =(User) session.getAttribute("user");
%>
<br>
User=<%=user.getUsername()%>
<br>
<a href="admin/CheckOut.jsp">Go to admin page</a><br>
<a href="user/CheckOut.jsp">Go to user page</a>
<form action="UserLogout" method="post">
<input type="submit" value="Logout" >
</form>
</body>
</html>