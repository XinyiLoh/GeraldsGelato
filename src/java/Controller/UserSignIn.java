/**
 *
 * @author Loh Xin Yi
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
import javax.servlet.http.HttpSession;

@WebServlet(name = "UserSignIn", urlPatterns = {"/UserSignIn"})
public class UserSignIn extends HttpServlet {

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
            String email = request.getParameter("email").trim();
            String password = request.getParameter("password").trim();

            User user = userDA.getRecordByEmailAndPassword(email, password);

            if (user == null) {
                RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
                if (userDA.getRecordByEmail(email) == null) {
                    out.println("<font color=red>Email is incorrect.</font>");
                    rd.include(request, response); //send message to the UserLogin.jsp
                } else {
                    out.println("<font color=red>Password is incorrect.</font>");
                    rd.include(request, response);
                }
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setMaxInactiveInterval(60 * 60); //session expiry in 1 hour

                if (user.getRole().equals("user")) {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    out.println("<font color=green> Hi " + user.getUsername() + ". Welcome back !.</font>");
                    rd.include(request, response);
                } else if (user.getRole().equals("admin")) {
                    response.sendRedirect("admin/adminHome.jsp");
                }
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
