<%-- 
    Document   : AddUser
    Created on : Apr 9, 2021, 5:02:23 PM
    Author     : ASUS
--%>

<%@page import="domain.User"%>
<%@page import="dataAccess.userDA"%>
<%
    userDA da = new userDA();
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String role = request.getParameter("role");
    boolean error = false;
    
    User user = new User(username, email, password, role);
    
    if(request.getParameter("submit") != null){
        
        if(username.isEmpty() || email.isEmpty() || password.isEmpty() || role.isEmpty()){
            out.println("<font color=red>Please fill in the empty field.</font>");
            error = true;
        } else if(userDA.getRecordByUsername(username) != null){
            out.println("<font color=red>Username existed.Please try another username.</font>");
            error = true;
                
        } else if (userDA.getRecordByEmail(email) != null) {
            out.println("<font color=red>Email existed. Please try another email.</font>");
            error = true;
        } else if (!role.equals("admin") || !role.equals("user")){
            out.println("<font color=red>Role can only be admin or user.</font>");
            error = true;
        }
        
        if(!error){
            da.addRecord(user);
%>
<script>
        alert('User added seccessfully.');
        window.location.href='UserDisplay.jsp';
</script>
<%
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
    </head>
    <body style="background-color: #288bfc;">
        <h2><u><b>User Detail</b></u></h2>
        <form action="AddUser.jsp">
            <table style="background-color: snow" border="5" cellpadding="5">
                
                <style>
               
                table{
                    width: 100%;
                    
                }
        
                th{
                    padding: 8px;

                    text-align: center; 
                }
                
                input{
                    width: 95%;
                }
                            
            </style>
                
                <tr>               
                    <td>Username</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>               
                    <td>Email</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>               
                    <td>Password</td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>               
                    <td>Role</td>
                    <td><input type="text" name="role"></td>
                </tr>
            </table>
            <br/>
            <a href="UserDisplay.jsp"><button type="button">Cancel</button></a>&nbsp;&nbsp;&nbsp;
            <button type="reset" name="reset">Reset</button>&nbsp;&nbsp;&nbsp;
            <button type="submit" name="submit">Add</button>
            
        </form>
    </body>
</html>
