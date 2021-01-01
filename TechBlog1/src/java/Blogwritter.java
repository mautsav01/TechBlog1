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
public class Blogwritter extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          
        }
    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {      
            processRequest(request, response);
            PrintWriter out = response.getWriter();
            String blogname=request.getParameter("blogname");
            String titledescription=request.getParameter("titledescription");
            String blog=request.getParameter("blog");
            String aboutme=request.getParameter("aboutme");
            String description=request.getParameter("description");
            String cat=request.getParameter("categories");
            String privacy=request.getParameter("privacy");
            String footer=request.getParameter("footer");
       //    out.print(blogname+titledescription+blog+aboutme+description+cat+privacy+footer);
            HttpSession sessio=request.getSession();
          String email=  sessio.getAttribute("email").toString();
          String phone= sessio.getAttribute("phone").toString();
           //  out.print(blogname+titledescription+blog+aboutme+description+cat+privacy+footer+email);
            out.print(email);
            out.print(phone);
            
        
           
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
              PreparedStatement pst;
     
            pst = con.prepareStatement ("Insert into content(blogname,titledescription,blog,aboutme,description,categories,privacy,footer,email) values (?,?,?,?,?,?,?,?,?)");
            pst.setString(1, blogname);
            pst.setString(2, titledescription);
            pst.setString(3,blog);
            pst.setString(4, aboutme);
            pst.setString(5,description);
            pst.setString(6,cat);
            pst.setString(7, privacy);
            pst.setString(8, footer);
            pst.setString(9, email);
            //pst.setString(10, phone);
            
            int rs=pst.executeUpdate();
            if(rs>0){
                
                response.sendRedirect("Profile.jsp");
                
                
            }else{
                out.println("user  not added");
                
            }
        
            
            
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Blogwritter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Blogwritter.class.getName()).log(Level.SEVERE, null, ex);
        }
         
            
        }
    

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
    