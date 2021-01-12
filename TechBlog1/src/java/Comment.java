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
public class Comment extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     
    
    }
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
          try {
            processRequest(request, response);
            PrintWriter out = response.getWriter();
            
            
            String comment=request.getParameter("Comment");
       //     out.print(Comment);
            String id=request.getParameter("id");
          //  out.print(id);
               HttpSession sessio=request.getSession();
        // String email1=null, phone1=null;
    String email=sessio.getAttribute("email").toString();
 //  sessio.invalidate();
              HttpSession sessi=request.getSession();
            String user=  sessi.getAttribute("user").toString();
              String b="0";
              
              out.print(comment+id+email+user);
      //    sessi.invalidate();
           
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Comment.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
            PreparedStatement pst=null;
            
            pst = con.prepareStatement ("Insert into review(likkes,comment,views,username,id) values (?,?,?,?,?)");
        
            pst.setString(1 ,b);
            pst.setString(2, comment);
            pst.setString(3,email);
          
            pst.setString(4, user);
            pst.setString(5, id);
         
             int rs=pst.executeUpdate();
            if(rs>0){
                
                response.sendRedirect("userprofilefull.jsp?id="+id);
                
                
            }else{
                out.println("user  not added");
                
            }
        
            
        } catch (SQLException ex) {
           System.out.println(ex);
        }

    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            PrintWriter out = response.getWriter();
            
            
            String comment=request.getParameter("Comment");
       //     out.print(Comment);
            String id=request.getParameter("id");
          //  out.print(id);
               HttpSession sessio=request.getSession();
        // String email1=null, phone1=null;
    String email=sessio.getAttribute("email").toString();
 //  sessio.invalidate();
              HttpSession sessi=request.getSession();
            String user=  sessi.getAttribute("user").toString();
              String b="0";
      //    sessi.invalidate();
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Comment.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
            PreparedStatement pst=null;
            
            pst = con.prepareStatement ("Insert into review(likkes,comment,views,username,id) values (?,?,?,?,?)");
        
            pst.setString(1 ,b);
            pst.setString(2, comment);
            pst.setString(3,email);
          
            pst.setString(4, user);
            pst.setString(5, id);
         
             int rs=pst.executeUpdate();
            if(rs>0){
                
                response.sendRedirect("userview.jsp?msg="+id);
                
                
            }else{
                out.println("user  not added");
                
            }
        
            
        } catch (SQLException ex) {
           System.out.println(ex);
        }
          
      
      
      
      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
