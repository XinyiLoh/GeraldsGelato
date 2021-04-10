<%-- 
    Document   : DeleteProduct
    Created on : Apr 9, 2021, 8:33:15 AM
    Author     : ASUS
--%>

<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
<%  //Declarations
    icecreamDA da = new icecreamDA();
    String ProductID = request.getParameter("ID");
    IceCream iceCream = da.getIceCream(ProductID);
    
    if(request.getParameter("submit") != null){
        da.deleteRecord(ProductID);
%>
<script>
        alert('Product detail deleted seccessfully.');
        window.location.href='ProductDisplay.jsp';
</script>
<%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #ff3333;">
        <h2><b><u>Product Detail</u></b></h2>
        <form action="DeleteProduct.jsp">
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
                
                <img src="<%= iceCream.getIceCreamImage() %>" alt="IceCream" width="200" height="300">
                <tr>               
                    <td>ID</td>
                    <td><input type="text" name="ID" value="<%= iceCream.getIcecreamID() %>" readonly></td>
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
                <p><u>Note: Do you confirm to Delete This Record?</u></p>
                <br/>
                <a href="ProductDisplay.jsp"><button type="button" name="cancel">Cancel</button></a>&nbsp;&nbsp;&nbsp;
                <button type="submit" name="submit">Delete</button>
        </form>
    </body>
</html>
