<%-- 
    Document   : GenerateReport
    Author     : Ong Yik Siang
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="dataAccess.paymentDA"%>
<%@page import="domain.Payment"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Functions -->
<%  //Declarations
    ArrayList<Payment> displayPayment = new ArrayList<Payment>();
    paymentDA da = new paymentDA();
     

    //Database Access
    displayPayment = da.selectAllPayment();
    double totalPaymentAmount = 0;
    DecimalFormat priceFormatter = new DecimalFormat("RM0.00");
   
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Report</title>
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
            
            <h1><b><u><center>Report</center></u></b></h1>
            <h3><u><b><center>until : <%= (new java.util.Date()).toLocaleString()%></center></b></u></h3>
                        
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
                <td>RM <%= displayPayment.get(i).getPaymentAmount() %></td>
                
            </tr>
            
            <%
            }
            %>
            
            <%
                    for(int i=0;i<displayPayment.size();i++){
                        totalPaymentAmount += displayPayment.get(i).getPaymentAmount();
                    }
                %>
            
       </table> 
            
            <br/>
            <table style="background-color: #F0F8FF" border="5" cellpadding="5">
                
                <td >Total Payment Amount : </td>
                
                
                <td><%= priceFormatter.format(totalPaymentAmount) %>  </td>
                <span><input type="hidden" name="totalPaymentAmount" value="<%= totalPaymentAmount %>"/></span>
                
            </table>
                <br/>
                 <a href="adminHome.jsp"><button style="margin-left: 95%" size="100%" type="button">Go Back</button></a><br/><br/>
        
    </body>
    
</html>