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
import java.sql.ResultSet;
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
public class login extends HttpServlet {

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    //
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           PrintWriter out = response.getWriter();
      
         try {
             processRequest(request, response);
             
             
             String email=request.getParameter("email").toString();
        //     String phone=request.getParameter("email").toString();
             String password=request.getParameter("password").toString();
             
             String pass = PasswordEnc.encryptPassword(password);
            // out.println(pass);
             try {
                 Class.forName("com.mysql.jdbc.Driver");
             
             Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
          //   String sql = "SELECT * FROM usertbl WHERE email='"+email+"'  AND password='"+pass+"'";
          String sql1= "Select email,phone,password from usertbl where email=? or phone=? and password=?";
             
             PreparedStatement st=con.prepareStatement(sql1);
            st.setString(1,email);
         st.setString(2,email);
            st.setString(3, pass);
         //   out.print(pass);
            
             ResultSet rs = st.executeQuery();
            if(rs.next()){
           
         HttpSession sessio=request.getSession();
    sessio.setAttribute("email", email);
    sessio.setAttribute("phone", email);
    
    
             response.sendRedirect("Profile.jsp");
         
            }else{
            
             response.sendRedirect("login.jsp?msg= Email phone number or password is incorrect"+email);
            
            } 
           
            
         } catch (SQLException ex) {
                out.print(ex);
             }
         } catch (ClassNotFoundException ex) {
               out.print(ex);
         }}
             
         
         }
   
