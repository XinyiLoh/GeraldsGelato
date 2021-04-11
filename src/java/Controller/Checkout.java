/**
 *
 * @author Koh Hui Hui
 */

package Controller;

import dataAccess.cartDA;
import dataAccess.customerDA;
import dataAccess.orderdetailsDA;
import dataAccess.paymentDA;
import domain.Cart;
import domain.Customer;
import domain.OrderDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Checkout extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Payment</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Payment at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
        ArrayList <Customer> custList=new ArrayList <Customer>();
        customerDA custDb=new customerDA();
        custList = custDb.selectAllCustomer();
        ArrayList <domain.Payment> payList=new ArrayList <domain.Payment>();
        paymentDA payDb=new paymentDA();
        payList = payDb.selectAllPayment();        
        ArrayList<Cart> cartList = new ArrayList<Cart>();
        cartDA cartDb = new cartDA();
        cartList = cartDb.selectAllCart();
        ArrayList<OrderDetails> orderList = new ArrayList<OrderDetails>();
        orderdetailsDA orderDb=new orderdetailsDA();
        orderList = orderDb.selectAllOrderDetails();
        
        
//        customer data
        String custId;
        int cId=0;
        String firstname = request.getParameter("fName").trim();
        String lastname = request.getParameter("lName").trim();
        String streetaddress = request.getParameter("streetAddress").trim();
        String unitaddress = request.getParameter("unitAddress").trim();
        String city = request.getParameter("city").trim();
        String state = request.getParameter("state").trim();
        String email = request.getParameter("email").trim();
        String phone = request.getParameter("phone").trim();
        int pcode = Integer.parseInt(request.getParameter("postcode").trim());
        String address = streetaddress+", "+unitaddress;
        
//        payment data
        String payId;
        int pId=0;
        double amountPay=Double.parseDouble(request.getParameter("totalPay").trim());
        String payMethod=request.getParameter("payMethod");
        
        String orderId;
        int oId=0;
        
//        date
        Date paymentDate = new Date();
        java.sql.Date insertPayDate = new java.sql.Date(paymentDate.getTime());
        
//        customer id
         if(custList==null){
             cId=0;
         }else{
             cId=custList.size();
             cId++;
         }
         custId="C"+cId;
        
//         payment id
         if(payList==null){
             pId=0;
         }else{
             pId=payList.size();
             pId++;
         }
         payId="P"+pId;
         
//         order id
         if(orderList==null){
             oId=0;
         }else{
             oId=orderList.size();
             oId++;
         }
         
        Customer cust = new Customer(custId, firstname, lastname, address, city, state, pcode, email, phone);
        domain.Payment pay = new domain.Payment(payId, amountPay, insertPayDate, payMethod, "packaging", custId);
        
        try {
            custDb.addCustomer(cust);
            payDb.addRecord(pay);
            
            for(int i=0;i<cartList.size();i++){
                orderId="O"+oId;
                OrderDetails order = new OrderDetails(orderId, payId, cartList.get(i).getId(), cartList.get(i).getQuantity());
                orderDb.addRecord(order);
                oId++;
            }
            cartDb.clearCart();
            response.sendRedirect("SuccessOrder.jsp?orderID= " + payId);
            
        } catch (Exception ex) {
            out.print(ex.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
