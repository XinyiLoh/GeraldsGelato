<%-- 
    Author     : Loh Xin Yi
--%>

<%@page import="domain.User" %>
<jsp:useBean id="user" class="domain.User" scope="session"></jsp:useBean>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Logout Page</title>
        <link rel="stylesheet" href="css/bootstrap/bootstrap-reboot.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap-grid.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
<body>
<%
    //allow access only if session exists
    if(session.getAttribute("user") == null){
        response.sendRedirect("UserLogin.jsp");
    }else user =(User) session.getAttribute("user");
    
    if(user.getUsername() == null){
        response.sendRedirect("UserLogin.jsp");
    }
%>

<!-- Page Content -->
<div class="container">

  <!-- Page Heading -->
  <h1 class="my-4">Are you sure you want to logout?</h1>
  <hr>

  <div class="row">
      <div class="col">
          <img src="image/logout.jpg" height="500px" width="700px">
      </div>
      <div class="col">
           <form action="UserLogout" method="POST">
                  <button class="btn btn-lg btn-danger" type="submit">Logout</button>
                  <a href="index.jsp"><button class="btn btn-lg btn-success" type="button">Back to homepage !</button></a>
            </form>
      </div>
  </div>
  <!-- /.row -->
</body>
</html>