/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Puri Saab
 */
@WebServlet(urlPatterns = {"/Forgot"})
public class Forgot extends HttpServlet {
public  String mail1;
public  String answer1;

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
             try 
    {
        PrintWriter out = response.getWriter();
        String mail=request.getParameter("email");
        HttpSession s =request.getSession();
        s.setAttribute("email", mail);
        String answer=request.getParameter("answer");
        out.println(mail+"  "+answer);
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
       Statement stmt=con.createStatement();
       String query = "select * from signup where email='"+mail+"' && answer = '"+answer+"'";
     out.println(query);
       ResultSet rs= stmt.executeQuery(query);
    while(rs.next())
    {
   mail1 = rs.getString("email");
   answer1 =rs.getString("answer");
    }
  if(mail.equals(mail1)  && answer.equals(answer1))
  {
      
      RequestDispatcher rd = request.getRequestDispatcher("change.jsp");
      rd.forward(request, response);
  }
  else
  {
      
      String msg = "Wrong Input";
      request.setAttribute("error", msg);
      //RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
      //rd.forward(request, response);
  }
  }
  
      
        catch(IOException | ClassNotFoundException | SQLException e)
   {
       System.out.println(e);
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
