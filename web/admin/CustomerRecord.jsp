<%-- 
    Document   : CustomerRecord.jsp
    Author     : Koh Hui Hui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dataAccess.customerDA"%>
<%@page import="domain.Customer"%>
<%@page import="java.util.ArrayList"%>

<!-- Functions -->
<%  //Declarations
    ArrayList<Customer> displayCustomer = new ArrayList<Customer>();
    customerDA da = new customerDA();

    //Database Access
    displayCustomer = da.selectAllCustomer();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Record</title>
        <style>
                table{
                    width: 100%
                }
        
                th{
                    padding: 8px;

                    text-align: center; 
                }
        </style>
    </head>
    
    <body style="background-color: #CAE9F5;">
        
       <table style="background-color: #F0F8FF" border="5" cellpadding="5" class="table table-striped">
           
            <h1><b><u><center>Customer Record</center></u></b></h1>
                   
            <thead>
                
            </thead>
            <tr>
                <th>Customer ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Postcode</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
            
            <tbody>
                
            </tbody>
      
            <% 
            for (int i = 0; i < displayCustomer.size(); i++){
            %>

            <tr>
                <td><%= displayCustomer.get(i).getCustId() %></td>
                <td><%= displayCustomer.get(i).getFirstname() %></td>
                <td><%= displayCustomer.get(i).getLastname() %></td>
                <td><%= displayCustomer.get(i).getAddress() %></td>
                <td><%= displayCustomer.get(i).getCity() %></td> 
                <td><%= displayCustomer.get(i).getState() %></td>
                <td><%= displayCustomer.get(i).getPostcode() %></td>
                <td><%= displayCustomer.get(i).getEmail() %></td>
                <td><%= displayCustomer.get(i).getPhone() %></td>
            </tr>
            
            <%
            }
            %>
         
       </table> 

    </body>
</html>
