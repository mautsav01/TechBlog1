<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/blogwriter.css">
<link rel="stylesheet" href="assets/css/navbar.css">
<link rel="stylesheet" href="assets/css/userprofile.css">


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
    
    int id=Integer.parseInt(request.getParameter("id"));
    out.print(id);
     ResultSet rs=null;
     try {
          
         Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
        
         Statement st=con.createStatement();
 
rs=st.executeQuery("select * from content where id='"+id+"' ");

                } catch (ClassNotFoundException ex) {
                  out.println("exxxxxxxxxxxxxxxxxxxxxxxxxxx"+ex); 
                }
            //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
while(rs.next()){      
  

        
   
    

    
    
    %>

<form method="post" action="${pageContext.request.contextPath}/update">
<div class="header">
  <input type="text" placeholder="title" name="blogname" value="<%=rs.getString("blogname")%>">  </input> 


</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">

<input type="text" placeholder="Title Description" name="titledescription" value="<%=rs.getString("titledescription")%>"> </input>  
<br><br>
<textarea name="blog"><%=rs.getString("blog")%></textarea>

    </div>
	


	
    </div>
  <div class="rightcolumn">
    <div class="card">
<input type="text" placeholder="About me" name="aboutme" value="<%=rs.getString("aboutme")%>">  </input> 
<br>
<br>

<input type="text"  name="description" value="<%=rs.getString("description")%>"> </input>  

     </div>
   
   </div>
   </div>
   
	<div class="footer">
	
 
 <label for="categories">Categories:</label>
  
  <select name="categories">
  
 
    <option value="AI" >Artificial Intelligence</option>
    <option value="IT">IT and Education</option>
    <option value="robot">Robotics</option>
    <option value="quantum">Quantum Computer</option>
	<option value="humanoid" >Humanoid</option>
	<option value="ct">Communication Technology</option>
	
	
  </select>
  <br><br>
 </div>
  
  
	<div class="footer">
	<label for="publicity">Post Should be:</label>
  <select name="privacy">
    <option value="public">Public</option>
    <option value="private">Private</option>
   </select>
  <br><br>
  
  </div>


	
  
  
   
   
   
   
  
   
   <div class="footer">
   
  <input type="text" placeholder="footer" name="footer" style="font-style:italic" value="<%=rs.getString("footer")%>">  </input> 
<input type="hidden" name="id" value="<%=rs.getString("id")%>">

</div>
<%
 
} 
    
 %>

<input type="Submit" value="Update">






   
   

</form>
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
