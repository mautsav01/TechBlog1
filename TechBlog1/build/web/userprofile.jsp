<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/userprofile.css">
<link rel="stylesheet" href="assets/css/navbar.css">


</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="search.jsp">Profile page</a>
  <a href="#home">Search page</a>
  
  <a href="login.jsp">Logout</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars">++</i>
  </a>
</div>






<div class="header">
  <h2>Blog Name</h2>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2>TITLE HEADING</h2>
      <h5>Title description, Dec 7, 2017</h5>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
	


	
    </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>About Me</h2>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
    </div>
   
   </div>
   <div class="rightcolumn">
    
 <br><br>
	<form>
	<div class="row">
	<div class="col-sm">
 <label for="categories">Categories:</label>
  <select name="categories" id="cat">
    <option value="AI">Atrificial Intelligence</option>
    <option value="IT">IT and Education</option>
    <option value="robot">Robotics</option>
    <option value="quantum">Quantum Computer</option>
	<option value="humanoid">Humanoid</option>
	<option value="ct">Communication Technology</option>
	
	
  </select>
  <br><br>
 </div>
  </div>
  
	<div class="row">
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
  
   
   </div></div>
   
   <div class="leftcolumn">
  
   
   <div class="footer">
  <h2>Footer</h2>
</div>
<div class="footer">

<form>
<input type="text" disabled="disabled" value=" 1 view"></input>
<input type="Submit" value="like"></input>
<input type="Submit" value="Comment"></input>

</form>



</form>
</div>





<div class="footer">
<form> 
<input type="Submit" value="edit"></input>
<input type="Submit" value="Delete"></input>
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
