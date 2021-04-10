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
    IceCream icecream = new IceCream();
    boolean error = false;
    
    //Database Access
    displayProduct = da.selectAllIceCream();
    
    if(request.getParameter("submit") != null){
        String search = request.getParameter("search");
        
        if(da.getIceCream(search) == null){
            error = true;
        }
        else{
            icecream = da.getIceCream(search);
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
    </head>
    <body style="background-color: #ff3333;">
        <h2><u><b>List of Products</b></u></h2>
        <form>
            <input type="text" name="search" placeholder="Search Using Product ID.">
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
            
            <a href="AddProduct.jsp"><button type="button">Add Product</button></a><br/><br/>
            <a href="adminHome.jsp"><button style="margin-left: 95%" size="100%" type="button">Go Back</button></a><br/><br/>

        <% 
            if(request.getParameter("submit") == null){
        %>  
            
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
            }
            else if(!error){

         %>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Price</th>
                <th>Available</th>
                <th colspan="2">Action</th>
            </tr>
            
            <tr>
                <td><%= icecream.getIcecreamID() %></td>
                <td><%= icecream.getIceCreamName() %></td>
                <td><%= icecream.getIceCreamType() %></td>
                <td><%= icecream.getIceCreamPrice() %></td>
                <td><%= icecream.getIceCreamAvailable() %></td>
                <td><a href="ViewProduct.jsp?ID=<%= icecream.getIcecreamID() %>">View</a></td>
                <td><a href="DeleteProduct.jsp?ID=<%= icecream.getIcecreamID() %>">Delete</a></td>
            </tr>
            
            </table>
            
        <%
            }
            else{
                out.println("No Such Product.");
            }
        %> 
        
       
    </body>
</html>
