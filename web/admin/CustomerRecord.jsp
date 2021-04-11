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
    Customer customer = new Customer();
    boolean error = false;

    //Database Access
    displayCustomer = da.selectAllCustomer();
    
    if(request.getParameter("submit") != null){
        String search = request.getParameter("search");
        
        if(da.getCustomerId(search) == null){
            error = true;
        }
        else{
            customer = da.getCustomerId(search);
        }
    }
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
    
    <body style="background-color: #88ff33;">
        
       <table style="background-color: snow" border="5" cellpadding="5" class="table table-striped">
           
            <h1><b><u><center>Customer Record</center></u></b></h1>
            
            <form>
            <input type="text" name="search" placeholder="Search Using Customer ID.">&nbsp;&nbsp;
            <button type="submit" name="submit" value="search">Search</button>
            </form><br/><br/>
                   
        <% 
            if(request.getParameter("submit") == null){
        %>
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
            }
            else if(!error){
                
         %>
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
            
            <tr>
                <td><%= customer.getCustId() %></td>
                <td><%= customer.getFirstname() %></td>
                <td><%= customer.getLastname() %></td>
                <td><%= customer.getAddress() %></td>
                <td><%= customer.getCity() %></td> 
                <td><%= customer.getState() %></td>
                <td><%= customer.getPostcode() %></td>
                <td><%= customer.getEmail() %></td>
                <td><%= customer.getPhone() %></td>
            </tr>
            
        <%
            }
            else{
                out.println("No Such Customer.");
            }
        %>       
       </table> 
       
       <br/>
            <a href="adminHome.jsp"><button style="margin-left: 95%" size="100%" type="button">Go Back</button></a><br/><br/>

    </body>
</html>
