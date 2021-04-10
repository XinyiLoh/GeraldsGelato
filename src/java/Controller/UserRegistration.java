/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dataAccess.userDA;
import domain.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Loh Xin Yi
 */
@WebServlet(name = "UserRegistration", urlPatterns = {"/UserRegistration"})
public class UserRegistration extends HttpServlet {

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
            String username = request.getParameter("username").trim();
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();
            String repassword = request.getParameter("re_password").trim();
            String role = "user";

            RequestDispatcher r = request.getRequestDispatcher("UserSignUp.jsp");
            if (username.isEmpty() || email.isEmpty() || password.isEmpty() || repassword.isEmpty()) {
                out.println("<font color=red>Please fill in the empty field.</font>");
                r.include(request, response);
            } else if (!password.equals(repassword)) {
                out.println("<font color=red>Password and Confirm Password must be same.</font>");
                r.include(request, response);
            } else if (userDA.getRecordByUsername(username) != null) {
                out.println("<font color=red>Username existed.Please try another username.</font>");
                r.include(request, response);
            } else if (userDA.getRecordByEmail(email) != null) {
                out.println("<font color=red>Email existed. Please try another email.</font>");
                r.include(request, response);
            } else {
                User user = new User(username, email, password, role);
                userDA.addRecord(user);
                RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
                out.println("<font color=green>Register successfully. Login here!.</font>");
                rd.include(request, response);
            }

        } catch (Exception ex) {
            Logger.getLogger(UserRegistration.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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