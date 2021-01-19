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
    
    
   // out.print(id);
   
    int likecoun=0;
    int viewcount=0;
    
    int id1=0;
    
    
    %>
    
    <%
    ResultSet rs=null;
    PreparedStatement pst=null;
     try {
          
         Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
        
          
               String emailcount="select count( Distinct email) from likes where id="+id;  
               Statement st=con.createStatement();
      rs=st.executeQuery(emailcount);

     
while(rs.next()){
 likecoun= (rs.getInt(1));
 
}
 
       
       String likecount="select count( Distinct email) from view where id="+id;  
              
      rs=st.executeQuery(likecount);

     
while(rs.next()){
 viewcount= (rs.getInt(1));
// out.print();
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
<div class="row">
<div class="col-lg-4">
<div class="footer">
    
    <%
    id1=rs.getInt("id");
    %>
    
 <%}%>    

<input type="text" disabled="disabled" value=<%="Views:_"+viewcount%>
</div></div></div>

<div class="col-lg-4">
<div class="footer">


<form method="get" action="${pageContext.request.contextPath}/Comment">

    <input type="text" hidden="hidden" name="id" value="<%=id%>">
  <p> comment displayed</P>
<br>
<textarea name="Comment" required="required"></textarea>

<br><br>
<input type="submit" value="Comment">
<%
  Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");


  Statement st=con.createStatement();


rs=st.executeQuery("Select * from review where id='"+id+"'");
  while (rs.next()) {
  

  
%> 
<b>
   
   <%=rs.getString("username")%>
 
</b><br>
   <%=rs.getString("comment")%>
   <br><hr>
 <%}%>






</form>
</div>

</div>


<div class="col-lg-4">
    
    <div class="footer">

    
<p> Number of likes </P>
</br> <h1><%=likecoun%></h1>
</div>
</div>

</div>


        





<div class="footer">


<form method="post" action="${pageContext.request.contextPath}/blogeditor.jsp"> 
    <input type="hidden" name="id" value=<%=id1%>>
<input type="Submit" value="Edit" >
    
</form>
    <form method="post" action="DeleteBlog">
        
        
        <input type="hidden" name="id" value="<%=id1%>">
       
    <input type="Submit" value="Delete">
</form>

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
