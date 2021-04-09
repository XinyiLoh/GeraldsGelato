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
        <title>Product List</title>
    </head>
    <body>
        <h2>List of Products</h2>
        <table border="1" cellpadding="5">
            
            <button type="button"><a href="AddProduct.jsp">Add Product</a></button><br/><br/>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Price</th>
                <th>Available</th>
                <th colspan="2">Action</th>
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
                    <td><a href="ViewProduct.jsp?ID=<%= displayProduct.get(i).getIcecreamID() %>">View</a></td>
                    <td><a href="DeleteProduct.jsp?ID=<%= displayProduct.get(i).getIcecreamID() %>">Delete</a></td>
                </tr>
         
         <%
            }
         %>
            
    </body>
</html>
