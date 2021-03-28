<%@page import="entity.Users" %>
<jsp:useBean id="user" class="entity.Users" scope="session"></jsp:useBean>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Success Page</title>
</head>
<body>
<%
//allow access only if session exists
if(session.getAttribute("user") == null){
	response.sendRedirect("login.jsp");
}else user =(Users) session.getAttribute("user");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
	if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}

%>
<h3>Hi <%=userName %>, Login successful. Your Session ID=<%=sessionID %></h3>
<br>
User=<%=user.getName()%>
<br>
<a href="admin/CheckOut.jsp">Go to admin page</a><br>
<a href="user/CheckOut.jsp">Go to user page</a>
<form action="UserLogout" method="post">
<input type="submit" value="Logout" >
</form>
</body>
</html>