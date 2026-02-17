
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String a=request.getParameter("name");//like count

  HttpSession sessio=request.getSession();
   
   String email= sessio.getAttribute("email").toString(); //email is who login to the account
  
HttpSession sessi=request.getSession();
        // String email1=null, phone1=null;
  String id=  sessi.getAttribute("id").toString();// id is representation of blog
   out.print(id);
out.print(email);


    Class.forName("com.mysql.jdbc.Driver");
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
  PreparedStatement pst=null;
                    String updateTableSQL = "insert into likes(likes,email,id) values (?,?,?)";
                            
                    
                        pst = con.prepareStatement(updateTableSQL);
                        
                        pst.setString(1, a);
                        pst.setString(2, email);
                        pst.setString(3, id);
                        
  int rs=pst.executeUpdate();
            if(rs>0){
          response.sendRedirect("userview.jsp?msg="+id);
                        
            }else{
                out.print("sww");
            } 
              
%>
         
