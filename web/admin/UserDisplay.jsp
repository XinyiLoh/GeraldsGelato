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
    User user = new User();
    boolean error = false;
    //Database Access
    displayUser = da.displayAllUser();
    
    if(request.getParameter("submit") != null){
        String search = request.getParameter("search");
        
        if(da.getRecordByUsername(search) == null){
            error = true;
        }
        else{
            user = da.getRecordByUsername(search);
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
    </head>
    <body style="background-color: #ff3333;">
        <h2><u><b>List of Users</b></u></h2>
        <form>
            <input type="text" name="search" placeholder="Search Using Username">
            <button type="submit" name="submit" value="search">Search</button>
        </form><br/>
        <table style="background-color: snow" border="5" cellpadding="5">
           
            <style>
               
                table{
                    width: 100%;
                    
                }
        
                th{
                    padding: 8px;

                    text-align: center; 
                }
                         
            </style>
            
            <a href="AddUser.jsp"><button type="button">Add User</button></a><br/><br/>
            <a href="adminHome.jsp"><button style="margin-left: 95%" size="100%" type="button">Go Back</button></a><br/><br/>

        <% 
            if(request.getParameter("submit") == null){
        %>        
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
            }
            else if(!error){
        %>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>Role</th>
                    <th colspan="2">Action</th>
                </tr>
                <tr>
                        <td><%= user.getUsername() %></td>
                        <td><%= user.getEmail() %></td>
                        <td><%= user.getPassword() %></td>
                        <td><%= user.getRole() %></td>
                        <td><a href="ViewUser.jsp?username=<%= user.getUsername() %>">View</a></td>
                        <td><a href="DeleteUser.jsp?username=<%= user.getUsername() %>">Delete</a></td>
                </tr>
                
        </table>
                
        <%
            }
            else{
                out.println("No Such User.");
            }
        %>
    </body>
</html>
