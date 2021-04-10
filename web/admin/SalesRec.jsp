<%-- 
    Document   : SalesRec
    Created on : Apr 9, 2021, 4:09:55 PM
    Author     : NEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dataAccess.paymentDA"%>
<%@page import="domain.Payment"%>
<%@page import="java.util.ArrayList"%>

<!-- Functions -->
<%  //Declarations
    ArrayList<Payment> displayPayment = new ArrayList<Payment>();
    paymentDA da = new paymentDA();
    Payment payment = new Payment();
    boolean error = false;

    //Database Access
    displayPayment = da.selectAllPayment();

    if(request.getParameter("submit") != null){
        String search = request.getParameter("search");
        
        if(da.getPaymentId(search) == null){
            error = true;
        }
        else{
            payment = da.getPaymentId(search);
        }
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Record</title>
    </head>
    
    <body style="background-color: #ff3333;">
        
        
                
       <table style="background-color: snow" border="5" cellpadding="5" >
           
           <style>
               
                table{
                    width: 100%
                }
        
                th{
                    padding: 8px;

                    text-align: center; 
                }

            </style>
            
            <h1><b><u><center>Sales Record</center></u></b></h1>
            <form>
            <input type="text" name="search" placeholder="Search Using Payment ID.">&nbsp;&nbsp;
            <button type="submit" name="submit" value="search">Search</button>
            </form><br/><br/>
            
        <% 
            if(request.getParameter("submit") == null){
        %>
            <tr>
                <th>Payment ID</th>
                <th>Customer ID</th>
                <th>Payment Date</th>
                <th>Payment Amount</th>
                <th>Order Status</th>
                <th colspan="1">Action</th>
           
            </tr>
      
        <% 
                for (int i = 0; i < displayPayment.size(); i++){
        %>
            
            <tr>
                <td><%= displayPayment.get(i).getPaymentId() %></td>
                <td><%= displayPayment.get(i).getCustId() %></td>
                <td><%= displayPayment.get(i).getPaymentDate() %></td>
                <td>RM <%= displayPayment.get(i).getPaymentAmount() %></td>
                <td><%= displayPayment.get(i).getOrderStatus() %></td> 
                <td><a href="UpdateOrderStatus.jsp?status=<%= displayPayment.get(i).getPaymentId() %>">Update Order Status</a></td>
                
            </tr>
            
        <%
                }
            }
            else if(!error){

         %>
            <tr>
                <th>Payment ID</th>
                <th>Customer ID</th>
                <th>Payment Date</th>
                <th>Payment Amount</th>
                <th>Order Status</th>
                <th colspan="1">Action</th>
            </tr>
            
            <tr>
                <td><%= payment.getPaymentId() %></td>
                <td><%= payment.getCustId() %></td>
                <td><%= payment.getPaymentDate() %></td>
                <td><%= payment.getPaymentAmount() %></td>
                <td><%= payment.getOrderStatus() %></td> 
                <td><a href="UpdateOrderStatus.jsp?status=<%= payment.getPaymentId() %>">Update Order Status</a></td>
                
            </tr>
            
        <%
            }
            else{
                out.println("No Such Record.");
            }
        %>   
         
       </table> 
        
        <br/>
            <a href="adminHome.jsp"><button style="margin-left: 95%" size="100%" type="button">Go Back</button></a><br/><br/>
        
    </body>
    
</html>