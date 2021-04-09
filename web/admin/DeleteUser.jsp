<%-- 
    Document   : DeleteUser
    Created on : Apr 9, 2021, 4:02:03 PM
    Author     : ASUS
--%>

<%@page import="dataAccess.userDA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.User"%>
<%  //Declarations
    userDA da = new userDA();
    String username = request.getParameter("username");
    User user = da.getRecordByUsername(username);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>User Detail</h2>
        <form>
            <table border="1" cellpadding="5">
               
                
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
        </form>
    </body>
</html>
