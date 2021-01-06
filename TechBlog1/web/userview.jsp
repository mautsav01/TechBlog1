
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<link rel="stylesheet" href="assets/css/userprofile.css">
<link rel="stylesheet" href="assets/css/navbar.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="assets/css/blogwriter.css">


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
    
    String ww=request.getParameter("msg1");
    if(ww!=null){
    out.print(ww);
    
    }
    
    %>
    
    
    
<%
HttpSession sessi=request.getSession();
        // String email1=null, phone1=null;
  String user=  sessi.getAttribute("user").toString();
   


String id=request.getParameter("msg");

if(id==null){
out.print("Something went wrong!!!");
}
//out.print(msg);
//String privacy="public";

    Class.forName("com.mysql.jdbc.Driver");
             
             Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
             
 //            String query = "Select categories from content where categories='"+msgindex+"' and privary=public ";
  
              Statement st=con.createStatement();
  ResultSet rs=null;
  
   
rs=st.executeQuery("Select * from content where id='"+id+"'");


    while (rs.next()) {
%>

<div class="header">
  <h2><%=rs.getString("Blogname")%></h2>
  
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2><%=rs.getString("titledescription")%></h2>
      <h5>Public</h5>
      <br><br>
      <p><%=rs.getString("blog")%></p>
      <p>
	  
	  </P></div>
	


	
    </div>
  <div class="rightcolumn">
    <div class="card">
        <b><%=rs.getString("email")%> </b>
      <p><%=rs.getString("description")%>  </p>
      <p><%=rs.getString("aboutme")%>  </p>
      
    </div>
   
   </div>
 
   
   <div class="leftcolumn">
  
   
   <div class="footer">
  <h2><%=rs.getString("Footer")%></h2>
</div>
</div>

<%
}

%>

   </div>
   
   <div class="row">
   <div class="col-lg-4">
   <div class="footer">
   
  
<button id="clickme">like</button>


</div>       
</div>

       
       
<div class="col-lg-4">

 <div class="footer">
  
  
     <h1>
         Howdy  <mark><%=user%></mark>
         
   </h1>
         
         <script>


var button = document.getElementById("clickme"),
  count = 0;
  
button.onclick = function() {

if(count==0){
  count += 1;
  
  
  button.innerHTML =  count;
 }
  else if(count==1){
  count=count-1;
  button.innerHTML =  count;
  
  
  }
  
};

function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

</script>

         
         
   
   
<form method="Post" action="${pageContext.request.contextPath}/Comment">
<br>
<b></b>
<br>
<br>




<textarea name="Comment" required="required"></textarea>




<input type="hidden" name="id" value=<%=id%>>
<input type="hidden" name="likes" value=count>


<br><br>

<input type="submit" value="Comment"></input>
 
</form>


<%



rs=st.executeQuery("Select * from review where id='"+id+"'");
  while (rs.next()) {
  

  
%> 
<b>
   <%
   String comment=rs.getString("comment");
   if(comment==" "){
   response.sendRedirect("userview.jsp?msg="+id);
   }else{
   %>
   <%=rs.getString("username")%>
 
</b><br>
   <%=rs.getString("comment")%>
   <br><hr>
 <%}}%>

   
</div> 
</div>
                    <div class="col-lg-4">
   <div class="footer">
   
  
<button id="clickme">Views</button>
</div>
       
       
       
</div>
       
   </div>
   

</body>




</style>

</html>
