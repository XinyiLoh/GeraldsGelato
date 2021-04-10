
package Controller;

import dataAccess.customerDA;
import domain.Customer;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Koh Hui Hui
 */
@WebServlet(name = "Checkout", urlPatterns = {"/Checkout"})
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
        
        customerDA custDb=new customerDA();
        String custId="A1001";
        String firstname=request.getParameter("fName").trim();
        String lastname=request.getParameter("lName").trim();
        String address=request.getParameter("streetAddress").trim();
        String unitaddress=request.getParameter("unitAddress").trim();
        String city=request.getParameter("city").trim();
        String state=request.getParameter("state").trim();
        String postcode=request.getParameter("postcode").trim();
        String email=request.getParameter("email").trim();
        String phone=request.getParameter("phone").trim();
        String totalPayment=request.getParameter("totalPay").trim();
        
        int pcode=Integer.parseInt(postcode);
        double amountPay=Double.parseDouble(totalPayment);
                
       Customer cust = new Customer(custId, firstname, lastname, address, city, state, pcode, email, phone);
        try {
            custDb.addCustomer(cust);
//        response.sendRedirect("SuccessOrder.jsp?ID=" + payId);
        
        } catch (SQLException ex) {
            Logger.getLogger(Checkout.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("SuccessOrder.jsp");
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
