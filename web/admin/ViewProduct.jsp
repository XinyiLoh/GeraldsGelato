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
        <h2>Product Detail</h2>
        <form>
            <table border="1" cellpadding="5">
                
                <tr>               
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= iceCream.getIcecreamID() %>" readonly=""></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= iceCream.getIceCreamName() %>"></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="text" name="price" value="<%= iceCream.getIceCreamPrice() %>"></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><textarea cols="40" rows="7" name="description"><%= iceCream.getIceCreamDescription() %></textarea></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><select name="rating">
                            <% 
                                for (int i = 0; i <= 10; i++) {
                                    if(i == iceCream.getIceCreamRating()){
                            %>
                                        <option value ="<%= i %>" selected=""><%= i %></option>
                            <%
                                    }
                                    else{
                            %>
                                        <option value ="<%= i %>"><%= i %></option>
                            <%
                                    }
                                }
                            %>
                    </select></td>
                </tr>
                <tr>               
                    <td>Image</td>
                    <td><input type="file" name="image"></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" name="type" value="<%= iceCream.getIceCreamType() %>"></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="text" name="available" value="<%= iceCream.getIceCreamAvailable() %>"></td>
                </tr>
                <tr>               
                    <td>Detail</td>
                    <td><textarea cols="40" rows="7" name="detail"><%= iceCream.getIceCreamLongDesc() %></textarea></td>
                </tr>
                <tr>               
                    <td>Ingredients</td>
                    <td><textarea cols="40" rows="7" name="ingredients"><%= iceCream.getIceCreamIngredients() %></textarea></td>
                </tr>
            </table>
        </form>
        
        
    </body>
</html>
