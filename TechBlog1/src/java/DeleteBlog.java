

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Utsav
 */
public class DeleteBlog extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
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
            
            
            String id=request.getParameter("id");
            out.print(id);
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
            String sql="Delete from content where id="+id+"";
            PreparedStatement pst=con.prepareStatement(sql);
           //pst.setInt(1, "id");
 
           pst.executeUpdate(sql);
           response.sendRedirect("Profile.jsp?msg4="+id);

            //  response.sendRedirect("Profile.jsp?msg4="+id);
        } catch (ClassNotFoundException ex) {
            out.print (ex);
        } catch (SQLException ex) {
          out.print(ex);
        }
    
    
    
    }

      
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
