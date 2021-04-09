<%-- 
    Document   : ViewProduct
    Created on : Apr 9, 2021, 8:31:53 AM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
<!-- Functions -->
<%  //Declarations
    ArrayList<IceCream> displayProduct = new ArrayList<IceCream>();
    icecreamDA da = new icecreamDA();
    String ProductID = request.getParameter("ID");
    IceCream iceCream = da.getIceCream(ProductID);
    
    //Database Access
    displayProduct = da.selectAllIceCream();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
    </head>
    <body>
        <form>
            <table border="1" cellpadding="5">
                <h2>Product Detail</h2>
                <tr>               
                    <td>ID</td>
                    <td><input type="text" value="<%= iceCream.getIcecreamID() %>" readonly=""></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" value="<%= iceCream.getIceCreamName() %>"></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamPrice() %></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamDescription() %></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamRating() %></td>
                </tr>
                <tr>               
                    <td>Image</td>
                    <td><input type="file" value="<%= iceCream.getIceCreamImage() %>"></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamName() %></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamName() %></td>
                </tr>
                <tr>               
                    <td>Detail</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamName() %></td>
                </tr>
                <tr>               
                    <td>Ingredients</td>
                    <td><input type="text" value=><%= iceCream.getIceCreamName() %></td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
