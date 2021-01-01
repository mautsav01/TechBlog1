<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="assets/css/navbar.css">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/profile.css">

</head>
<body>
    <%
    String msg3=request.getParameter("msg");
    
    if(msg3!=null){  
    %>
    
    <script>
        alert("Blog Updated!!!");
        
    </script>
    
    
    <%}%>

    <%
    String msg2=request.getParameter("msg4");
    
    if(msg2!=null){  
    %>
    
    <script>
        alert("Blog Deleted!!!");
        
    </script>
    
    
    <%}%>
    
    
    
    
    
    
    <div class="topnav" id="myTopnav">
  <a href="blogwritter.jsp" name="email">Write a blog</a>
  <a href="search1.jsp">Search</a>
  
  <a href="login.jsp" id="blogwritter">Logout</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars">++</i>
  </a>
</div>

    <%
ResultSet rs=null;
    HttpSession sessio=request.getSession();
   
   String email= sessio.getAttribute("email").toString();
  String phone= sessio.getAttribute("phone").toString();
  // out.print(phone);
   try { 
   
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                  out.println("exxxxxxxxxxxxxxxxxxxxxxxxxxx"+ex); 
                }
            //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
      Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
      
 Statement st=con.createStatement();
 
 if (phone!=null){
  rs=st.executeQuery("select email from usertbl where  phone='"+phone+"' ");
  while(rs.next())
{
   email=rs.getString("email");
}
  
 
 }
 
 
 
 rs=st.executeQuery("select * from usertbl where email='"+email+"' or phone='"+phone+"' ");
while(rs.next())
{          
   
%>
    
   


<h1> Howdy <% %> <%=rs.getString("username")%> </h1>
<%}%>




<%
rs=st.executeQuery("select email from usertbl where phone='"+phone+"' ");
 while (rs.next()){
     email=rs.getString("email");
 }


rs=st.executeQuery("SELECT COUNT(email) FROM content where email='"+email+"'");
int count=0;
while(rs.next()){
     count= (rs.getInt(1));
            
}
%>




<%

 

out.print(phone);
out.print(count);
out.print(email);
//String q="SELECT * FROM content INNER JOIN usertbl ON  usertbl.phone='"+phone+"' AND content.email='"+email+"'";
rs=st.executeQuery("select * from content where email='"+email+"' ");

// rs=st.executeQuery(q);


 for (int i=0; i<count;i++){
while(rs.next())
{          
%>




<div class="row">






  <div class="column">
    <div class="card">
      <div class="container">
        <h2><%=rs.getString("blogname")%></h2>
        <p class="title"><%=rs.getString("aboutme")%></p>
        <p><%=rs.getString("description")%></p>
        <p><%=rs.getString("email")%></p>
        <p><%=phone%></p>
		<form method="get" action="userprofilefull.jsp">
                    <%
                    String s1=new String();
                    s1=rs.getString("blogname");
                    %>
                    <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
                    <p><input type="submit" class="button" value="ViewAll">
		</form>
		</p>
		</action>
      </div>
    </div>
  </div>
    
    

<%}}%>
</div>
</body>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>


</html>
