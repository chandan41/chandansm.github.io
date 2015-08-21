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
@WebServlet(urlPatterns = {"/HotelDemo"})
public class HotelDemo extends HttpServlet {
public String[] slider = new String[3];
   public String description; 
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
    String id = request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    String query = "select * from hotel1 where Id='"+id+"'";
    out.println("<script src='js/js-image-slider.js'></script>");
    out.println("<link rel='stylesheet' href='css/bootstrap.css'>");
    ResultSet rs = stmt.executeQuery(query);
    out.println("<body style='background-image:url(images/back1.jpg);'>");
    out.println("<div class='container';");
    out.println("<table class='table'>");
    while(rs.next())
    {
      String name = rs.getString("name");
      String address = rs.getString("address");
      String img = rs.getString("img1");
      String img1 = rs.getString("img2");
      String img2= rs.getString("img3");
      String phone = rs.getString("phone");
      description= rs.getString("description");
      String addres = rs.getString("address");
      String path = ("images/"+img);
      String path1 = ("images/"+img1);
      String path2 = ("images/"+img2);
      slider[0] = img;
      slider[1] = img1;
      slider[2] = img2;
      
    out.println("<div  style='margin-left:29px;margin-top:50px;position: relative;height:120px;width:1300px;'>");
    out.println("<div  style='margin-left:29px;margin-top:-10px;position:relative;height:120px;width:650px;'>");
    out.println("<tr>");
    out.println("<td>");
    out.println("<h1><b>"+name+"<b></h1>");
    out.println("</td>");
    out.println("</div>"); 
    out.println("<td>");
    out.println("<div  style='margin-left:638px;margin-top:-130px;position: relative;height:120px;width:650px;'>");
    out.println("<h3>Contact-"+phone+"</h3>");
    out.println("</td>");
    out.println("</tr>");
    out.println("</div>"); 
    out.println("<tr>");
    out.println("<td>");
    out.println("<div style='margin-left:10px;margin-top:-30px;position: relative;height:120px;width:1300px;'>");
    out.println("<h1>Address:- "+addres+"</h1>");
    out.println("</td>");
    out.println("</tr>");
     }
    out.println("</div>"); 
    out.println("</table>");
    out.println("<div id='slider' style='margin-left:10px;margin-top:-50px;border:solid;border-color:white;position: relative;height:545px;width:1300px;'>");
    for(int i = 0;i<3;i++)
    {
    out.println("<img src='images/"+slider[i]+"'>");
    }
    out.println("</div>"); 
    out.println("<div style='margin-left:10px;margin-top:0px;height:345px;width:1300px;'>");
    out.println("<h3>"+description+"</h3>");
    out.println("<a href='Hotel.jsp'><input type='submit' style='height:40px;margin-left:600px;width:90px;' value='BACK' /></a>");
   
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
