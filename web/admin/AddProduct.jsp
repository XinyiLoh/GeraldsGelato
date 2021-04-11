<%-- 
    Document   : AddProduct
    Author     : Gan Ji Xiang
--%>

<%@page import="domain.IceCream"%>
<%@page import="dataAccess.icecreamDA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  //Declarations
    icecreamDA da = new icecreamDA();
    
    boolean error = false;

    if(request.getParameter("submit") != null){
        
        String ProductID = request.getParameter("id");
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String desc = request.getParameter("description");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String image = request.getParameter("image");
        String type = request.getParameter("type");
        int available = Integer.parseInt(request.getParameter("available"));
        String detail = request.getParameter("detail");
        String ingredients = request.getParameter("ingredients");
        
        IceCream add = new IceCream(ProductID, name, price, desc, rating, image, type, available, detail, ingredients);
        
        if(ProductID.isEmpty() || name.isEmpty() || desc.isEmpty() || image.isEmpty() || type.isEmpty() || detail.isEmpty() || ingredients.isEmpty() ){
            out.println("<font color=red>Please fill in the empty field.</font>");
            error = true;
        } else if(da.getIceCream(ProductID) != null){
           
            out.println("<font color=red>Product existed.Please try again.</font>");
            error = true;    
        }
        
        if(!error){
            da.addRecord(add);
%>
<script>
        alert('Product detail added seccessfully.');
        window.location.href='ProductDisplay.jsp';
</script>
<%
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #faf02a;">
        <h2><u><b>Add Product Detail</b></u></h2>
        <form action="AddProduct.jsp">
            <table style="background-color: snow"  border="5" cellpadding="5">
                
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
                    <td><input type="text" name="id" maxlength="5"></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="number" name="price" step="0.01"></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><textarea cols="40" rows="7" name="description"></textarea></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><input type="number" name="rating" value="0" readonly></td>
                </tr>
                <tr>               
                    <td>Image</td>
                    <td><input type="text" name="image"></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" name="type"></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="number" name="available"></td>
                </tr>
                <tr>               
                    <td>Detail</td>
                    <td><textarea cols="40" rows="7" name="detail"></textarea></td>
                </tr>
                <tr>               
                    <td>Ingredients</td>
                    <td><textarea cols="40" rows="7" name="ingredients"></textarea></td>
                </tr>
            </table>
            <br/>
            <a href="ProductDisplay.jsp"><button type="button">Cancel</button></a>&nbsp;&nbsp;&nbsp;
            <button type="reset" name="reset">Reset</button>&nbsp;&nbsp;&nbsp;
            <button type="submit" name="submit">Add</button>
        </form>
    </body>
</html>
