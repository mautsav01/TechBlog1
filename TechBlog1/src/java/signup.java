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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Utsav
 */
public class signup extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     }

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
             
            out.print("what");
            String username=request.getParameter("username").toString();
            String email=request.getParameter("email").toString();
            String phone=request.getParameter("phone").toString();
            String password=request.getParameter("password").toString();
            String password1=request.getParameter("password1").toString();
            if(!password.equalsIgnoreCase(password1)){
              
         response.sendRedirect("signup.jsp?msg=password mis matched"+password1);   
            
            }else{
            
          
                
                
           String pass = PasswordEnc.encryptPassword(password);
             
                
                
                
            
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                  out.println("exxxxxxxxxxxxxxxxxxxxxxxxxxx"+ex); 
                }
            //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
      Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            PreparedStatement pst;
     
            pst = con.prepareStatement ("Insert into usertbl(username,email,phone,password) values (?,?,?,?)");
            pst.setString(1, username);
            pst.setString(2, email);
            pst.setString(3,phone );
            //  pst.setString(4, mobile);
            pst.setString(4,pass);
            
            int rs=pst.executeUpdate();
            if(rs>0){
                
                 HttpSession sessio=request.getSession();
    sessio.setAttribute("email", email);
    
                response.sendRedirect("blogwritter.jsp");
         
                
                
            }else{
                out.println("user  not added");
                
            }
        } }catch (SQLException ex) {
                response.sendRedirect("signup.jsp?msg1=from signup already used");
          
        
        }
        }
    }

   
    
    
    
    
    
    

