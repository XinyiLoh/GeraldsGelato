/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dataAccess.customerDA;
import dataAccess.orderdetailsDA;
import dataAccess.paymentDA;
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

/**
 *
 * @author HP
 */
@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Payment extends HttpServlet {

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
        ArrayList <Payment> payList=new ArrayList <Payment>();
        customerDA custDb=new customerDA();
        paymentDA payDb=new paymentDA();
        orderdetailsDA orderDb=new orderdetailsDA();
        
//        customer data
        int custId=1;
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
        int payId=0;
        double amountPay=Double.parseDouble(request.getParameter("totalPay").trim());
        String payMethod=request.getParameter("payMethod");
        
//        date
//        Calendar now = Calendar.getInstance();
//        int year = now.get(Calendar.YEAR);
//        int month = now.get(Calendar.MONTH);
//        int day = now.get(Calendar.DAY_OF_MONTH);
//        String yearInString = String.valueOf(year);
//        String monthInString = String.valueOf(month);
//        String dayInString = String.valueOf(day);
//        String paymentDate = dayInString+"-"+monthInString+"-"+yearInString;
         Date paymentDate = new Date();
        java.sql.Date insertPayDate = new java.sql.Date(paymentDate.getTime());
        
//        id
//        int custNum=custList.size();
//        custId=custNum++;
        String customerId="A"+custId;
        
//        for(int x=0;x<payList.size();x++){
//            payList.add();
//        }
        
//        int payNum=payList.size();
//        payId=payNum++;
        String orderId="O"+payId;
        
        Customer cust = new Customer(customerId, firstname, lastname, address, city, state, pcode, email, phone);
        domain.Payment pay = new domain.Payment(orderId, amountPay, insertPayDate, payMethod, "packaging", customerId);
        OrderDetails order = new OrderDetails();
        
        try {
//            custDb.addCustomer(cust);
            payDb.addRecord(pay);
            HttpSession session = request.getSession();
            request.setAttribute("orderID", orderId);
            RequestDispatcher dispatcher = request.getRequestDispatcher("SuccessOrder.jsp");
            dispatcher.forward(request, response);
            
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
