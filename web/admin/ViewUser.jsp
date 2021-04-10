<%-- 
    Document   : ViewUser
    Created on : Apr 9, 2021, 4:01:38 PM
    Author     : ASUS
--%>

<%@page import="dataAccess.userDA"%>
<%@page import="domain.User"%>
<%  //Declarations
    userDA da = new userDA();
    String username = request.getParameter("username");
    User user = da.getRecordByUsername(username);
    boolean error = false;

    if(request.getParameter("submit") != null){
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        User update = new User(username, email, password, role);
        
        if(username.isEmpty() || email.isEmpty() || password.isEmpty() || role.isEmpty()){
            out.println("<font color=red>Please fill in the empty field.</font>");
            error = true;
        } else if(userDA.getRecordByUsername(username) != null){
            
            if(username == user.getUsername()){
                error = false;
            }
            else{
                out.println("<font color=red>Username existed.Please try another username.</font>");
                error = true;
            }
                
        } else if (userDA.getRecordByEmail(email) != null) {
            
            if(email == user.getEmail()){
                error = false;
            }
            else{
                out.println("<font color=red>Email existed. Please try another email.</font>");
                error = true;
            }
        }
        
        if(!error){
            da.updateRecord(update);
%>
<script>
        alert('User detail updated seccessfully.');
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
        <title>View User</title>
    </head>
    <body>
        <h2>User Detail</h2>
        <form action="ViewUser.jsp" method="POST">
            <table border="1" cellpadding="5">
                <tr>               
                    <td>Username</td>
                    <td><input type="text" name="username" value="<%= user.getUsername() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Email</td>
                    <td><input type="text" name="email" value="<%= user.getEmail() %>"></td>
                </tr>
                <tr>               
                    <td>Password</td>
                    <td><input type="text" name="password" value="<%= user.getPassword() %>"></td>
                </tr>
                <tr>               
                    <td>Role</td>
                    <td><input type="text" name="role"value="<%= user.getRole() %>"></td>
                </tr>
                
            </table>
                <button type="reset" name="reset">Reset</button>
                <button type="submit" name="submit">Update</button>
        </form>
    </body>
</html>
