<%-- 
    Document   : DeleteUser
    Created on : Apr 9, 2021, 4:02:03 PM
    Author     : ASUS
--%>

<%@page import="dataAccess.userDA"%>
<%@page import="domain.User"%>
<%  //Declarations
    userDA da = new userDA();
    String username = request.getParameter("username");
    User user = da.getRecordByUsername(username);

    if(request.getParameter("submit") != null){
        da.deleteRecord(username);
%>
<script>
        alert('User detail deleted seccessfully.');
        window.location.href='UserDisplay.jsp';
</script>
<%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User</title>
    </head>
    <body style="background-color: #288bfc;">
        <h2><b><u>User Detail</u></b></h2>
        <form action="DeleteUser.jsp">
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
                    <td><input type="text" name="email" value="<%= user.getEmail() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Password</td>
                    <td><input type="text" name="password" value="<%= user.getPassword() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Role</td>
                    <td><input type="text" name="role" value="<%= user.getRole() %>" readonly></td>
                </tr>
            </table>
                <p><u>Note: Do you confirm to Delete This Record?</u></p>
                <br/>
                <a href="UserDisplay.jsp"><button type="button" name="cancel">Cancel</button></a>&nbsp;&nbsp;&nbsp;
                <button type="submit" name="submit">Delete</button>
        </form>
    </body>
</html>
