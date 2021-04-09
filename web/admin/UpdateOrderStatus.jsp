<%-- 
    Document   : UpdateOrderStatus
    Created on : Apr 10, 2021, 4:06:04 AM
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

    //Database Access
    displayPayment = da.selectAllPayment();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Order Status</title>
    </head>
    
    <body style="background-color: #CAE9F5;">
        
        
                
       <table style="background-color: #F0F8FF" border="5" cellpadding="5" >
           
           <style>
               
                table{
                    width: 100%
                }
        
                th{
                    padding: 8px;

                    text-align: center; 

            </style>
            
            <h1><b><u><center>Update Order Status</center></u></b></h1>
            
            <a href="SalesRec.jsp"><button style="margin-left: 90%" size="100%" type="button">Cancel</button></a><br/><br/>
            
            <tr>
                <th>Payment ID</th>
                <th>Customer ID</th>
                <th>Order Status</th>
           
            </tr>
      
            <% 
            for (int i = 0; i < displayPayment.size(); i++){
            %>
            
            <tr>
                <td><%= displayPayment.get(i).getPaymentId() %></td>
                <td><%= displayPayment.get(i).getCustId() %></td>
                <td><%= displayPayment.get(i).getOrderStatus() %></td>
                
            </tr>
            
            <%
            }
            %>
         
       </table> 
        
    </body>
    
</html>
