<%-- 
    Document   : PaymentDetail
    Created on : Apr 10, 2021, 3:15:32 AM
    Author     : NEC

 Currently Unable to use!!!
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataAccess.paymentDA"%>
<%@page import="domain.Payment"%>

<%  //Declarations
    ArrayList<Payment> displayPayment = new ArrayList<Payment>();
    paymentDA da = new paymentDA();
    String paymentId = request.getParameter("PAYMENT_ID");
    Payment payment = da.getPaymentId(paymentId);
    
    //Database Access
    displayPayment = da.selectAllPayment();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Detail</title>
    </head>
    <body>
        <h1><b><u>Payment Detail</u></b></h1>
        
        <form>
            <table border="1" cellpadding="5">
                
                <tr>               
                    <td>Payment ID</td>
                    <td><input type="text" name="PaymentId" value="<%= payment.getPaymentId() %>" readonly=""></td>
                </tr>
                
                <tr>               
                    <td>Customer ID</td>
                    <td><input type="text" name="CustId" value="<%= payment.getCustId() %>" readonly=""></td>
                </tr>
                
                <tr>               
                    <td>Payment Date</td>
                    <td><input type="text" name="PaymentDate" value="<%= payment.getPaymentDate() %>" readonly=""></td>
                </tr>
                
                 <tr>               
                    <td>Payment Amount</td>
                    <td><input type="text" name="PaymentAmount" value="<%= payment.getPaymentAmount() %>" readonly=""></td>
                </tr>
                
                 <tr>               
                    <td>Order Status</td>
                    <td><input type="text" name="OrderStatus" value="<%= payment.getOrderStatus() %>"></td>
                </tr>
                
            </table>
                
        </form>
        
    </body>
    
</html>