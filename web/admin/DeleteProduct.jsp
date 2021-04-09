<%-- 
    Document   : DeleteProduct
    Created on : Apr 9, 2021, 8:33:15 AM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
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
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Product Detail</h2>
        <form>
            <table border="1" cellpadding="5">
                
                <img src="<%= iceCream.getIceCreamImage() %>" alt="IceCream" width="200" height="300">
                <tr>               
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= iceCream.getIcecreamID() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= iceCream.getIceCreamName() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="text" name="price" value="<%= iceCream.getIceCreamPrice() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><textarea cols="40" rows="7" name="description" readonly><%= iceCream.getIceCreamDescription() %></textarea></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><input type="text" name="rating" value="<%= iceCream.getIceCreamRating() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" name="type" value="<%= iceCream.getIceCreamType() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="text" name="available" value="<%= iceCream.getIceCreamAvailable() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Detail</td>
                    <td><textarea cols="40" rows="7" name="detail" readonly><%= iceCream.getIceCreamLongDesc() %></textarea></td>
                </tr>
                <tr>               
                    <td>Ingredients</td>
                    <td><textarea cols="40" rows="7" name="ingredients" readonly><%= iceCream.getIceCreamIngredients() %></textarea></td>
                </tr>
            </table>
        </form>
    </body>
</html>
