/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Puri Saab
 */
@WebServlet(urlPatterns = {"/News"})
@MultipartConfig(fileSizeThreshold=1024*1024*10,    
                 maxFileSize=1024*1024*50,          
                 maxRequestSize=1024*1024*100)   
public class News extends HttpServlet {
private final String Upload_Directory = "C:\\Users\\Puri Saab\\Documents\\NetBeansProjects\\SmartCity\\web\\images";
public String name;

  
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
   response.setContentType("text/html;charset=UTF-8");
           
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
      
       PrintWriter writer = response.getWriter();
   try
   {
   
    //String applicationPath = request.getServletContext().getRealPath("");
    String uploadFilePath = File.separator +Upload_Directory;
    File fileSaveDir = new File(uploadFilePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        //writer.println("Upload File Directory="+uploadFilePath);
        String fileName = null;
        for (Part part : request.getParts())
        {
             
           fileName = part.getSubmittedFileName();
          part.write(uploadFilePath + File.separator + fileName);
        }
    String title = request.getParameter("data");
    String description = request.getParameter("description");
    String img =request.getParameter("fileName");;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    String query = "insert into news(data,img,description) values ('"+title+"','"+fileName+"','"+description+"')";
    stmt.execute(query);
    RequestDispatcher rd = request.getRequestDispatcher("news.jsp");
    rd.forward(request, response);
      }
       catch(Exception e)
       {
      }
   }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
