<%-- 
    Document   : ViewUser
    Author     : Gan Ji Xiang
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
        } else if (!role.equals("admin") || !role.equals("user")){
            out.println("<font color=red>Role can only be admin or user.</font>");
            error = true;
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
    <body style="background-color: #288bfc;">
        <h2>User Detail</h2>
        <form action="ViewUser.jsp" method="POST">
            <table style="background-color: snow" border="5" cellpadding="5">
                
                <style>
               
                table{
                    width: 100%;
                }
        
                th{
                    padding: 8px;

                    text-align: center; 
                }
                
                textarea{
                    width: 98%;
                }
                
                input{
                    width: 90%;
                }
                            
            </style>
                
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
                <br/>
                <a href="UserDisplay.jsp"><button type="button">Cancel</button></a>&nbsp;&nbsp;&nbsp;
                <button type="reset" name="reset">Reset</button> &nbsp;&nbsp;&nbsp;
                <button type="submit" name="submit">Update</button>
        </form>
    </body>
</html>
