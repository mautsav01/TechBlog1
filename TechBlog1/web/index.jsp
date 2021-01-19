
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="assets/css/navbar.css">


<link rel="stylesheet" href="assets/css/gallery.css">


</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="#home">Home</a>
  <a href="login.jsp">Login</a>
  <a href="signup.jsp">Signup</a>
  <a href="search.jsp">Search</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>


<br><br>
<div class="row"> 
  <div class="col-sm-2">
  <a href="search.jsp?msgindex=AI" style="text-decoration: none">  <img src="image/AI.png" style="width:98%"><h4> <Center>Artificial Intelligence</center></h4> </a>
    
    
  </div>
  <div class="col-sm-2">
  <a href="search.jsp?msgindex=ct" style="text-decoration: none">  <img src="image/communication.png" style="width:100%"><h4> <Center>Communication</center></h4> </a>
    
  </div>  
  <div class="col-sm-2">
  <a href="search.jsp?msgindex=humanoid" style="text-decoration: none">  <img src="image/humanoid.png" style="width:100%"> <h4> <Center>Humanoid</center></h4></a>
    
  </div>
  <div class="col-sm-2">
  <a href="search.jsp?msgindex=IT" style="text-decoration: none">  <img src="image/ITE.png" style="width:100%"> <h4> <Center>IT and Education</center></h4></a>
    
  </div>
   <div class="col-sm-2">
  <a href="search.jsp?msgindex=quantum" style="text-decoration: none">  <img src="image/quantum.png" style="width:90%"> <h4> <Center>Quantum Computing</center></h4></a>
    
    
  </div>
  <div class="col-sm-2">
  <a href="search.jsp?msgindex=robot" style="text-decoration: none">  <img src="image/robotics.png" style="width:100%"> <h4> <Center>Robotics</center></h4></a>
    
    
    
  </div>
 
</div>
<br><br>
<div class="row">
<div class="col-sm-6" "col-lg-6" "col-md-6">
<img src="image/author1.jpg">
</div>
<div class="col-sm-6">
    
    <%
    ResultSet rs=null;
    int rand=0;String privacy="public";
    
    
         Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
       Statement st=con.createStatement();
  
    rs=st.executeQuery("select * from content where privacy='"+privacy+"' and id="+42);

    while(rs.next()){      
  
    %>
   
<h1>
<%=rs.getString("blogname")%>

</h1>

<h2>
<%=rs.getString("email")%>

</h2>
<p>
    <%=rs.getString("blog")%>

    
    <br><br>
<i>  <%=rs.getString("footer")%>
 </i>
</div>
<% } %>
<div class="col-sm-6" "col-lg-6" "col-md-6">
<img src="image/author2.png">
</div>
<div class="col-sm-6">
  
    <%
   
        ///    out.println(rand); 
   
    
   rs=st.executeQuery("select * from content where privacy='"+privacy+"' AND id="+10);

    while(rs.next()){      
    
    
    %>
<h1>
    
<%=rs.getString("blogname")%>

</h1>

<h2>
<%=rs.getString("email")%>
</h2>
<p><%=rs.getString("blog")%>
    <br><br>
<i> <%=rs.getString("footer")%>
</i>
</div>





<%}%>


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

</body>
</html>
