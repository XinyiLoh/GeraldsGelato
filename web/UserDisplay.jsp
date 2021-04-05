<%-- 
    Document   : UserDisplay
    Created on : Apr 6, 2021, 4:16:20 AM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.userDA"%>
<%@page import="domain.User"%>
<!-- Functions -->
<%  //Declarations
    ArrayList<User> displayUser = new ArrayList<User>();
    userDA da = new userDA();

    //Database Access
    displayUser = da.selectAllUser();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
    </head>
    <body>
        <table border="1" cellpadding="5">
            <h2>List of users</h2>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Status</th>
            </tr>
        <% 
            for (int i = 0; i < displayProduct.size(); i++) {
         %>
         
                <tr>
                    <td><%= displayUser.get(i).getUsername() %></td>
                    <td><%= displayUser.get(i).getEmail() %></td>
                    <td><%= displayUser.get(i).getIceCreamAvailable() %></td>
                </tr>
         
         <%
            }
         %>
            
        <form action="" method="POST">
            
        </form>
    </body>
</html>
