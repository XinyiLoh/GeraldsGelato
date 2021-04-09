<%-- 
    Document   : AddProduct
    Created on : Apr 9, 2021, 5:06:38 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Add Product Detail</h2>
        <form>
            <table border="1" cellpadding="5">
                
                <tr>               
                    <td>ID</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>               
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>               
                    <td>Price</td>
                    <td><input type="text" name="price"></td>
                </tr>
                <tr>               
                    <td>Description</td>
                    <td><textarea cols="40" rows="7" name="description"></textarea></td>
                </tr>
                <tr>               
                    <td>Rating</td>
                    <td><input type="text" name="rating" value="0" readonly></td>
                </tr>
                <tr>               
                    <td>Image</td>
                    <td><input type="file" name="image"></td>
                </tr>
                <tr>               
                    <td>Type</td>
                    <td><input type="text" name="type"></td>
                </tr>
                <tr>               
                    <td>Available</td>
                    <td><input type="text" name="available"></td>
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
        </form>
    </body>
</html>
