<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/userprofile.css">
<link rel="stylesheet" href="assets/css/navbar.css">
<link rel="stylesheet" href="assets/css/blogwriter.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>
    
    <div class="topnav" id="myTopnav">
  <a href="Profile.jsp">Profile page</a>
  <a href="search1.jsp">Search page</a>
     <a href="login.jsp">Logout</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars">++</i>
  </a>
</div>

    
    
    <%
        
    int id=Integer.parseInt(request.getParameter("id"));;
    
    
    
    int emailcoun=0;
    int likecoun=0;
    
    
    
    %>
    
    <%
    ResultSet rs=null;
    PreparedStatement pst=null;
     try {
          
         Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
        
          
               String emailcount="select count( Distinct id) from view";  
               Statement st=con.createStatement();
      rs=st.executeQuery(emailcount);

     
while(rs.next()){
 emailcoun= (rs.getInt(1));
 
}
 
       
       String likecount="SELECT likes, '"+id+"', sum(likes) FROM likes group by '"+id+"'";  
              
      rs=st.executeQuery(likecount);

     
while(rs.next()){
 likecoun= (rs.getInt(2));
 out.print(likecoun);
}

          
          
    
rs=st.executeQuery("select * from content where id='"+id+"' ");

                } catch (ClassNotFoundException ex) {
                  out.println("exxxxxxxxxxxxxxxxxxxxxxxxxxx"+ex); 
                }
            //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
while(rs.next()){      
  

        
   
    
    
    %>




<div class="header">
  <h2>  <%=rs.getString("blogname")%>
  </h2>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2></h2>
      <h5> <%=rs.getString("titledescription")%></h5>
      <p> <%=rs.getString("categories")%>
</p>
      <p> <%=rs.getString("blog")%>
</p>
    </div>
	


	
    </div>
  <div class="rightcolumn">
    <div class="card">
      <h2> <%=rs.getString("aboutme")%>
</h2>
      <p> <%=rs.getString("description")%>
</p>
    </div>
   
   </div>
    </div>
 <br><br>
	<form>
	
	<div class="col-lg-12">
 <label for="categories">Categories:</label>
  <select name="categories" id="cat">
    <option value="AI"> <%=rs.getString("categories")%></option>
    <option value="IT">IT and Education</option>
    <option value="robot">Robotics</option>
    <option value="quantum">Quantum Computer</option>
	<option value="humanoid">Humanoid</option>
	<option value="ct">Communication Technology</option>
	
	
  </select>
  <br><br>
 </div>

  
	
	<div class="col-sm">
 <label for="publicity">Post Should be:</label>
  <select name="pp" id="pp">
    <option value="public">Public</option>
    <option value="private">Private</option>
   </select>
  <br><br>
  <div>
  </div>
</form>

	
   </div>
  
   
   </div></div></div>
   
  
   
   <div class="footer">
  <h2><%=rs.getString("footer")%></h2>
</div>
<div class="footer">
<div class="row">
<div class="col-lg-4">
    
     
<form>
<input type="text" disabled="disabled" value=<%="Views:_"+emailcoun%>>
</div>
<div class="col-lg-4">
<p> comment displayed</P>
<br>
<textarea>Write a comment here</textarea>
<br><br>
<input type="submit" value="Comment"></input>
</div>



<div class="col-lg-4">
    
    
    
<p> number of likes </P>
</div>
</form>
</div>


</form>
</div>





<div class="footer">


<form method="post" action="${pageContext.request.contextPath}/blogeditor.jsp"> 
    <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
<input type="Submit" value="Edit" >
    
</form>
    <form method="post" action="DeleteBlog">
        
        
        <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
       
    <input type="Submit" value="Delete">
</form>
<%}%>
</div>
   </div>
   
   
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
