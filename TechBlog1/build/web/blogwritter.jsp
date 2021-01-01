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




<form method="post" action="${pageContext.request.contextPath}\Blogwritter">
<div class="header">
  <input type="text" placeholder="title" name="blogname">  </input> 


</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">

<input type="text" placeholder="Title Description" name="titledescription"> </input>  
<br><br>
<textarea name="blog">Write your Blog here</textarea>

    </div>
	

<%
    String msg=new String();
msg=request.getParameter("msg");

HttpSession se=request.getSession();
msg= se.getAttribute("email").toString();
String msg1=se.getAttribute("phone").toString();
 out.print(msg1);
%>
	
    </div>
  <div class="rightcolumn">
    <div class="card">
<input type="text" placeholder="About me" name="aboutme">  </input> 
<br>
<br>

<input type="text"  name="description" > </input>  

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
   
  <input type="text" placeholder="footer" name="footer" style="font-style:italic">  </input> 

</div>


<input type="Submit" value="post"></input>







   
   

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
