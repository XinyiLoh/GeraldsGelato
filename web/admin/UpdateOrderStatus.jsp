<%-- 
    Document   : UpdateOrderStatus
    Created on : Apr 10, 2021, 4:06:04 AM
    Author     : NEC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dataAccess.paymentDA"%>
<%@page import="domain.Payment"%>

<!-- Functions -->
<%  //Declarations
    paymentDA da = new paymentDA();
    String payment = request.getParameter("status");
    Payment pay = da.getPaymentId(payment);
    
    //if(request.getParameter("orderStatus") != null){
        //String packaging= request.getParameter("orderStatus");
        //da.updateOrderStatusRecord(packaging,payment);
    //}
    
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
        
                th, button{
                    padding: 8px;

            </style>
            
            <h1><b><u><center>Update Order Status</center></u></b></h1>
            
            <a href="SalesRec.jsp"><button style="margin-left: 95%" size="100%" type="button">Cancel</button></a><br/><br/>
            
            <tr>
                <th>Payment ID</th>
                <th>Customer ID</th>
                <th>Order Status</th>
                <th colspan="3">Update Order Status</th>
           
            </tr>
      
            <tr> 
               <td><%= payment %></td>
               <td><%= pay.getCustId() %></td>
               <td><%= pay.getOrderStatus() %></td>
               <td><form method="GET" action="../OrderStatus">
                       <input type="hidden" name="id" value='<%=request.getParameter("status")%>'>
              <input type="submit" name="orderstatus" value="packaging">
                   </form>
               </td>
               <td>
              <form method="GET" action="../OrderStatus">
                       <input type="hidden" name="id" value='<%=request.getParameter("status")%>'>
              <input type="submit" name="orderstatus" value="shipping">
                   </form>
               </td>
               <td>
              <form method="GET" action="../OrderStatus">
                       <input type="hidden" name="id" value='<%=request.getParameter("status")%>'>
              <input type="submit" name="orderstatus" value="delivered">
                   </form>
               
               </td>
           
                            
     
            </tr>
         
       </table> 
        
       </form>

    </body>
    
</html>
