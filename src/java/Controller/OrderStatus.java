/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dataAccess.paymentDA;
import static java.awt.SystemColor.text;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.ws.rs.client.Entity.text;

/**
 *
 * @author NEC
 */
@WebServlet(name = "OrderStatus", urlPatterns = {"/OrderStatus"})
public class OrderStatus extends HttpServlet {

    private String host = "jdbc:derby://localhost:1527/icecreamdb";
    private String user = "nbuser";
    private String password = "nbuser";
    private Connection conn;
    private Statement stmt;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String os = request.getParameter("orderstatus");
        String id = request.getParameter("id");
        
        paymentDA da = new paymentDA();
        da.updateOrderStatusRecord(os,id);
        
        
        out.print("<script>alert('The status for " + id + " had been updated ');"
                            + "window.location.href = 'admin/SalesRec.jsp';</script>");
            

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void createConnection() {
        try {
            conn = DriverManager.getConnection(host, user, password);
            System.out.println("***TRACE: Connection established.");
        } catch (SQLException ex) {
            Logger.getLogger(OrderStatus.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
