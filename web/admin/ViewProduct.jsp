<%-- 
    Document   : ViewProduct
    Created on : Apr 9, 2021, 8:31:53 AM
    Author     : ASUS
--%>

<%@page import="dataAccess.icecreamDA"%>
<%@page import="domain.IceCream"%>
<!-- Functions -->
<!DOCTYPE html>
<%  //Declarations
    icecreamDA da = new icecreamDA();
    String productID = request.getParameter("ID");
    IceCream ic = da.getIceCream(productID);
    
    boolean error = false;

    if(request.getParameter("submit") != null){
        
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String desc = request.getParameter("description");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String image = request.getParameter("image");
        String type = request.getParameter("type");
        int available = Integer.parseInt(request.getParameter("available"));
        String detail = request.getParameter("detail");
        String ingredients = request.getParameter("ingredients");
        
        IceCream update = new IceCream(productID, name, price, desc, rating, image, type, available, detail, ingredients);
        
        if(productID.isEmpty() || name.isEmpty() || desc.isEmpty() || image.isEmpty() || type.isEmpty() || detail.isEmpty() || ingredients.isEmpty() ){
            out.println("<font color=red>Please fill in the empty field.</font>");
            error = true;
        }else if(rating > 10 || rating < 0){
            out.println("<font color=red>Please enter the correct rating value that not more than 10 and less than 0.</font>");
            error = true;
        }
        
        if(!error){
            da.updateRecord(update);
%>
<script>
        alert('Product detail updated seccessfully.');
        window.location.href='ProductDisplay.jsp';
</script>
<%
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
    </head>
    <body style="background-color: #faf02a;">
        <h2><b><u>Product Detail</u></b></h2>
        <form action="ViewProduct.jsp">
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
                    <td>ID</td>
                    <td><input type="text" name="ID" value="<%= ic.getIcecreamID() %>" readonly></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= ic.getIceCreamName() %>"></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="number" name="price" step="0.01" value="<%= ic.getIceCreamPrice() %>"></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><textarea cols="40" rows="7" name="description"><%= ic.getIceCreamDescription() %></textarea></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><input type="number" name="rating" value="<%= ic.getIceCreamRating()%>" min="0" max="10" maxlength="2"></td>
                </tr>
                <tr>               
                    <td>Image</td>
                    <td><input type="text" name="image" value="<%= ic.getIceCreamImage()%>"></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" name="type" value="<%= ic.getIceCreamType() %>"></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="number" name="available" value="<%= ic.getIceCreamAvailable() %>"></td>
                </tr>
                <tr>               
                    <td>Detail</td>
                    <td><textarea cols="40" rows="7" name="detail"><%= ic.getIceCreamLongDesc() %></textarea></td>
                </tr>
                <tr>               
                    <td>Ingredients</td>
                    <td><textarea cols="40" rows="7" name="ingredients"><%= ic.getIceCreamIngredients() %></textarea></td>
                </tr>
            </table>
                <br/>
            <a href="ProductDisplay.jsp"><button type="button">Cancel</button></a>&nbsp;&nbsp;&nbsp;
            <button type="reset" name="reset">Reset</button>&nbsp;&nbsp;&nbsp;
            <button type="submit" name="submit" value="success">Update</button>
        </form>
        
        
    </body>
</html>
