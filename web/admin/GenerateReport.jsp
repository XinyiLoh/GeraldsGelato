<%-- 
    Document   : GenerateReport
    Created on : Apr 11, 2021, 01:30:55 PM
    Author     : NEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dataAccess.paymentDA"%>
<%@page import="domain.Payment"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>


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
        <title>Generate Report</title>
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
                }

            </style>
            
            <h1><b><u><center>Report</center></u></b></h1>
            <h3><b><center>until : <%= (new java.util.Date()).toLocaleString()%></center></b></h3>
                        
            <tr>
                <th>Payment ID</th>
                <th>Payment Date</th>
                <th>Payment Amount</th>
                       
            </tr>
      
            <% 
            for (int i = 0; i < displayPayment.size(); i++){
            %>
            
            <tr>
                <td><%= displayPayment.get(i).getPaymentId() %></td>
                <td><%= displayPayment.get(i).getPaymentDate() %></td>
                <td><%= displayPayment.get(i).getPaymentAmount() %></td>
                
            </tr>
            
            <%
            }
            %>
         
       </table> 
        
    </body>
    
</html>