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
    displayUser = da.displayAllUser();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
    </head>
    <body>
        <h2>List of Users</h2>
        <table border="1" cellpadding="5">
           
            <a href="AddUser.jsp"><button type="button">Add User</button></a><br/><br/>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Status</th>
                <th>Role</th>
                <th colspan="2">Action</th>
            </tr>
        <% 
            for (int i = 0; i < displayUser.size(); i++) {
         %>
         
                <tr>
                    <td><%= displayUser.get(i).getUsername() %></td>
                    <td><%= displayUser.get(i).getEmail() %></td>
                    <td><%= displayUser.get(i).getPassword() %></td>
                    <td><%= displayUser.get(i).getRole() %></td>
                    <td><a href="ViewUser.jsp?username=<%= displayUser.get(i).getUsername() %>">View</a></td>
                    <td><a href="DeleteUser.jsp?username=<%= displayUser.get(i).getUsername() %>">Delete</a></td>
                </tr>
         
         <%
            }
         %>
    </body>
</html>
