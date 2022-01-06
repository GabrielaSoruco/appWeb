/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Validacion;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ComprobarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Persistencia base = new Persistencia();
            ResultSet rs = base.consultaSQL("select * from usuarios where usuario="
                    + "'" + request.getParameter("usuario") + "'" + " and contrasena="
                    + "'" + request.getParameter("password") + "'");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>CheckUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Validacion de usuario " + request.getContextPath() + "</h1>");
            out.println("<h2>Bienvenidx al sistema</h2>");
            while (rs.next()) {
                out.println(rs.getString("usuario"));
                out.println(rs.getString("contrasena"));
            }
            if (rs.first() == false) {
                out.print("<p>No hay usuarios que coincidan con la búsqueda." + "</p>");
                out.print("<p>Usuario: " + request.getParameter("usuario") + "</p>");
            }
            out.println("</body>");
            out.println("</html>");
            
        } catch (SQLException e) {
            System.out.print("Error de SQL: " + e);
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
