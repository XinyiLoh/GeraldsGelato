package Controller;

import entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shawn
 */
@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {

    @PersistenceContext
    EntityManager em;

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
        request.login(request.getParameter("j_username"), request.getParameter("j_password"));
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
        try {
            request.login(request.getParameter("j_username"), request.getParameter("j_password"));
            Users user = em.find(Users.class, request.getParameter("j_username"));
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            //expiry in 1 hour
            session.setMaxInactiveInterval(60 * 60);

            Cookie userNameCookie = new Cookie("user", user.getName());
            userNameCookie.setMaxAge(60 * 60);
            response.addCookie(userNameCookie);
            if (request.isUserInRole("users") || request.isUserInRole("staffs") || request.isUserInRole("admins")) {
                response.sendRedirect("LoginSuccess.jsp");
            } else {
                response.sendRedirect("index.html");
            }
        } catch (ServletException ex) {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            if (("Login Failed").toUpperCase().equals(ex.getMessage().toUpperCase())) {
                try (PrintWriter out = response.getWriter();) {
                    out.println("<font color=red>Either user name or password is wrong.</font>");
                    out.println(ex.getMessage());
                    out.println(ex.getRootCause());
                    rd.include(request, response);
                }
            } else {

                try (PrintWriter out = response.getWriter();) {
                    out.println(ex.getMessage());
                    rd.include(request, response);
                }
            }
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
