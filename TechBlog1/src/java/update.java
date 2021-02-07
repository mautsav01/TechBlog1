/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Utsav
 */
public class update extends HttpServlet {

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
        PrintWriter out = response.getWriter();
      
    }

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

		try {
                    processRequest(request, response);
                    PrintWriter out = response.getWriter();
                    
                    //     int a = Integer.parseInt(request.getParameter("id"));
                    String a=request.getParameter("id");
                    
                    
                    String blogname=request.getParameter("blogname");
                    String titledescription=request.getParameter("titledescription");
                    String blog=request.getParameter("blog");
                    String aboutme=request.getParameter("aboutme");
                    String description=request.getParameter("description");
                    String cat=request.getParameter("categories");
                    String privacy=request.getParameter("privacy");
                    String footer=request.getParameter("footer");
                       String d=  java.time.LocalDate.now().toString();
                  //  String date="updated on:"+d;
                    
                    HttpSession sessio=request.getSession();
                    
                    String email= sessio.getAttribute("email").toString();
                    
               //     out.print(blogname+titledescription+blog+aboutme+description+cat+privacy+footer+email);
                //    out.print(a);
                    
                    
                    
                    
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
                    Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
                    
                    PreparedStatement pst=null;
                    String updateTableSQL = "UPDATE content SET blogname=?,titledescription=?,blog = ?,aboutme=?,description=?,categories=?,privacy=?,footer=?,email=?,date=? "
                            + " WHERE id = "+a+"";
                    
                    try {
                        pst = cn.prepareStatement(updateTableSQL);
                        
                        //preparedStatement.setInt(1, a);
                        
                        pst.setString(1, blogname);
                        pst.setString(2, titledescription);
                        pst.setString(3,blog);
                        pst.setString(4, aboutme);
                        pst.setString(5,description);
                        pst.setString(6,cat);
                        pst.setString(7, privacy);
                        pst.setString(8, footer);
                        pst.setString(9, email);
                        pst.setString(10, d);
                        
                        
                        
                        
                        
                        // execute update SQL stetement
                        pst.executeUpdate();
                        
                        
                    } finally {
                        
                        if (pst != null) {
                            pst.close();
                        }
                        
                        if (cn != null) {
                            cn.close();
                        }
                        
                    }
                    
                    
                    response.sendRedirect("Profile.jsp?msg=Updated");
                    
                    
                    
                }   catch (ClassNotFoundException ex) {
            Logger.getLogger(update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(update.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     
     
     
     
  
 
}
          
   
    }



