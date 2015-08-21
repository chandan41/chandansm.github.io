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
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Puri Saab
 */
@WebServlet(urlPatterns = {"/News1"})
public class News1 extends HttpServlet {
public String description;
public String img;
public String title;
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
    String id = request.getParameter("value");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    String query = "select * from news where id='"+id+"'";
    
    ResultSet rs = stmt.executeQuery(query);
    while(rs.next())
    {
      title = rs.getString("data");
      img = rs.getString("img");
      description= rs.getString("description");
    } 
      String path = ("images/"+img);
      
    out.println("<table>");
    
    out.println("<div  style='margin-left:250px;margin-top:50px;position: relative;height:120px;width:1000px;'>");
    out.println("<tr>");
    out.println("<td>");
    out.println("<h1><b  style='margin-left:250px;'>"+title+"<b></h1>");
    out.println("</td>");
    out.println("</tr>");
    out.println("<tr>");
    out.println("<td>");
    out.println("</table>");
    out.println("</div>");
    out.println("<div style='margin-left:400px;height=400px;width:600px;'>");
     
    out.println("<img  style='margin-left:55px;height=400px;width:600px;' src='"+path+"'>");
    out.println("</div>");
    out.println("<div style='margin-left:250px;margin-top:0px;height:345px;width:1000px;'>");
    out.println("<h3>"+description+"</h3>");
    out.println("<a href='index.jsp' ><input type='submit' style='height:40px;margin-left:480px;margin-top:40px;width:90px;' value='BACK' /></a>");
      
    out.println("</div></div>");
    
    }
    
   catch(Exception e)
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
