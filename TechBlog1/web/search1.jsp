
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="
 css/search.css">
<link rel="stylesheet" href="assets/css/navbar.css">
 <link rel="stylesheet" href="assets/css/search.css">
 
<link rel="stylesheet" href="assets/css/toogle.css">



 <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  


</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="blogwritter.jsp">Write a Blog</a>
  <a href="Profile.jsp">Profile</a>
  <a href="login.jsp">Logout</a>
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars">++</i>
  </a>
</div>


<div class="bg-image img1"></div>

<div class="bg-text">
    
<h2><b>Search By:</b>
<br>
<h4> Blog Name || Categories</h4>
<br>
<form action="search1.jsp"  >

<input type="text" placeholder="Search" name="msgindex">
<input type="submit" value="submit">
</form>

</div>


   
  
 
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


<%
 String msgindex=request.getParameter("msgindex");
 String privacy="public";
    
    
    Class.forName("com.mysql.jdbc.Driver");
             
             Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
             
 //            String query = "Select categories from content where categories='"+msgindex+"' and privary=public ";
  
              Statement st=con.createStatement();
  ResultSet rs=null;
  
   
rs=st.executeQuery("Select * from content where categories lIKE '%"+msgindex+"%' AND privacy='"+privacy+"' OR blogname LIKE '%"+msgindex+"%' AND privacy='"+privacy+"'");





          int i=1;
    while (rs.next()) {
          
           
        
  %>
<br><br>
<section class="content16 cid-siDU9c22MR" id="content16-9">

    

    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-10">
                <div id="bootstrap-accordion_1" class="panel-group accordionStyles accordion" role="tablist" aria-multiselectable="true">
                    <div class="card mb-3">
                        <div class="card-header" role="tab" id="headingOne">
                            <a role="button" class="panel-title collapsed" data-toggle="collapse" data-core="" href="#collapse1_<%=i%>" aria-expanded="false" aria-controls="collapse1">
                                <h6 class="panel-title-edit mbr-fonts-style mb-0 display-7"><strong><%=rs.getString("blogname")%></strong>
                                </h6>
                                <span class="sign mbr-iconfont mbri-arrow-down"></span>
                            </a>
                        </div>
                        <div id="collapse1_<%=i%>" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#bootstrap-accordion_1">
                            <div class="panel-body">
                                
                                
                                <p><%=rs.getString("blog")%></p>
                                <%
                               String msg=rs.getString("id");
                                %>
                                
	<form action="userview.jsp">
            <input type="hidden" name="msg" value=<%=msg%>>
	<div class="container">
            <div class="row">
	<div class="col">
	<button type="submit" class="btn btn-primary display-4">View more </button>
	</div>
		</div>
	</div>
    </form>
								
			
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </div></div>
    
 <%   
i++;
}
%>
</section>

<section class="menu menu1 cid-siDVPkhdy7" once="menu" id="menu1-b">
    

</section>
<section style="background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;"><a href="https://mobirise.site/n" style="flex: 1 1; height: 3rem; padding-left: 1rem;"></a><p style="flex: 0 0 auto; margin:0; padding-right:1rem;"> <a href="https://mobirise.site/z" style="color:#aaa;"></a></p></section><script src="assets/web/assets/jquery/jquery.min.js"></script>  <script src="assets/popper/popper.min.js"></script>  <script src="assets/tether/tether.min.js"></script>  <script src="assets/bootstrap/js/bootstrap.min.js"></script>  <script src="assets/smoothscroll/smooth-scroll.js"></script>  <script src="assets/parallax/jarallax.min.js"></script>  <script src="assets/mbr-switch-arrow/mbr-switch-arrow.js"></script>  <script src="assets/dropdown/js/nav-dropdown.js"></script>  <script src="assets/dropdown/js/navbar-dropdown.js"></script>  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>  <script src="assets/theme/js/script.js"></script>  <script src="assets/formoid/formoid.min.js"></script>  
  




</body>
</html>
