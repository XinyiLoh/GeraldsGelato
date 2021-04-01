<%-- 
    Document   : ProductDisplay
    Created on : Apr 1, 2021, 11:36:56 AM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
<!-- Functions -->
<%  //Declarations
    ArrayList<IceCream> displayProduct = new ArrayList<IceCream>();
    icecreamDA da = new icecreamDA();

    //Database Access
    displayProduct = da.selectAllIceCream();
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
                <th>Password</th>
                <th>Name</th>
            </tr>
        <% 
            for (int i = 0; i < displayProduct.size(); i++) {
         %>
         
                <tr>
                    <td><%= displayProduct.get(i).getIcecreamID() %></td>
                    <td><%= displayProduct.get(i).getIceCreamName() %></td>
                    <td><%= displayProduct.get(i).getIceCreamType() %></td>
                    <td><%= displayProduct.get(i).getIceCreamPrice() %></td>
                    <td><%= displayProduct.get(i).getIceCreamAvailable() %></td>
                </tr>
         
         <%
            }
         %>
            
        <form action="" method="POST">
            
        </form>
    </body>
</html>
