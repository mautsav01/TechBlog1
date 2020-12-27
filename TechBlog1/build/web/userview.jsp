
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
  <a href="profile.html">Profile page</a>
  <a href="search.html">Search page</a>
  
  <a href="login.html">Logout</a>
  
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
      <h5>Categories</h5>
      <p>Some text..</p>
      <p>
	  
	  Albert Einstein, (born March 14, 1879, Ulm, Württemberg, Germany—died April 18, 1955, Princeton, New Jersey, U.S.), German-born physicist who developed the special and general theories of relativity and won the Nobel Prize for Physics in 1921 for his explanation of the photoelectric effect.Apr 14, 2020
Born: March 14, 1879, Ulm
Parents: Hermann Einstein, Pauline Koch
Sibling: Maria, Maja Einstein
Profession: Physicist, AuthorAlbert Einstein, (born March 14, 1879, Ulm, Württemberg, Germany—died April 18, 1955, Princeton, New Jersey, U.S.), German-born physicist who developed the special and general theories of relativity and won the Nobel Prize for Physics in 1921 for his explanation of the photoelectric effect.Apr 14, 2020
Born: March 14, 1879, Ulm
Parents: Hermann Einstein, Pauline Koch
Sibling: Maria, Maja Einstein
Profession: Physicist, AuthorAlbert Einstein, (born March 14, 1879, Ulm, Württemberg, Germany—died April 18, 1955, Princeton, New Jersey, U.S.), German-born physicist who developed the special and general theories of relativity and won the Nobel Prize for Physics in 1921 for his explanation of the photoelectric effect.Apr 14, 2020
Born: March 14, 1879, Ulm
Parents: Hermann Einstein, Pauline Koch
Sibling: Maria, Maja Einstein
Profession: Physicist, Author
Albert Einstein, (born March 14, 1879, Ulm, Württemberg, Germany—died April 18, 1955, Princeton, New Jersey, U.S.), German-born physicist who developed the special and general theories of relativity and won the Nobel Prize for Physics in 1921 for his explanation of the photoelectric effect.Apr 14, 2020
Born: March 14, 1879, Ulm
Parents: Hermann Einstein, Pauline Koch
Sibling: Maria, Maja Einstein
Profession: Physicist, Author
	  </P></div>
	


	
    </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>About Me</h2>
      <p>Albert Einstein, (born March 14, 1879, Ulm, Württemberg, Germany—died April 18, 1955, Princeton, New Jersey, U.S.), German-born physicist who developed the special and general theories of relativity and won the Nobel Prize for Physics in 1921 for his explanation of the photoelectric effect.Apr 14, 2020
Born: March 14, 1879, Ulm
Parents: Hermann Einstein, Pauline Koch
Sibling: Maria, Maja Einstein
Profession: Physicist, Author

	  
	  
	  </p>
    </div>
   
   </div>
 
   
   <div class="leftcolumn">
  
   
   <div class="footer">
  <h2>Footer</h2>
</div>
</div>







   </div>
   
   <div class="row">
   <div class="col-lg-4">
   <div class="footer">
   
   
<button id="clickme">like</button>
</div>
</div>
<div class="col-lg-4">

 <div class="footer">
  
   <p> comment is displayed here</p>
<form>
<br>
<textarea>Write a comment here</textarea>
<br><br>
<input type="submit" value="Comment"></input>
</div></div>
 <div class="col-lg-4">

 <div class="footer">
  
  <p>view</P>
</div>
</form>
</div>
   </div>
   


</body>

<script>


var button = document.getElementById("clickme"),
  count = 0;
  
button.onclick = function() {

if(count==0){
  count += 1;
  button.innerHTML = "liked: " + count;
 }
  else if(count==1){
  count=count-1;
  button.innerHTML = "like: " + count;
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



</style>

</html>
