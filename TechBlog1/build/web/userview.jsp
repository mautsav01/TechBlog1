
<%@page import="java.sql.PreparedStatement"%>
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
         HttpSession sessio=request.getSession();
 int emailcoun=0;String emails=null; int viewcoun=0;
 
 
 
  String id= request.getParameter("msg");//ID OF PARTICULAR BLOG
  
  
 
HttpSession sessi=request.getSession();
        String semail=sessi.getAttribute("email").toString();
 ResultSet rs=null;

Class.forName("com.mysql.jdbc.Driver");
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
            
  PreparedStatement pst=null;
  
  
  
  
  
   // /VIEW INSERT///////////////////////////////////////////////////////////////////////// //views insert               
  
                    String updateTableSQL = "insert into view(id,email) values (?,?)";
  pst = con.prepareStatement(updateTableSQL);
      pst.setString(1, id);
      pst.setString(2, semail);
   // /VIEW INSERT///////////////////////////////////////////////////////////////////////// //views insert               
  
 int rs1=pst.executeUpdate();
            if(rs1>0){
   // /VIEW COUNT///////////////////////////////////////////////////////////////////////// //views insert               
        
      String viewcount="select count( Distinct email) from view where id="+id;   //emailcount is string for sqlquery
      rs=pst.executeQuery(viewcount);
//viewcount
     
while(rs.next()){
     viewcoun= (rs.getInt(1));//this is the result aftercount of views
   //  out.print(emailcoun);
            
}
            }else{
                out.print("sww");
            } 
   // /VIEW COUNT///////////////////////////////////////////////////////////////////////// //views insert               
  
  

   
%>
    
    
    
    

    <%
   // /CATCHING ID FROM SOME OTHER PAGES///////////////////////////////////////////////////////////////////////// //views insert               
   
    String ww=request.getParameter("msg1");
    if(ww!=null){
    out.print(ww);
    
    }
    
    %>
    
    
    
<%
    
    
      ///COMMENT PART//////////////////////////////////
   String count=null;
   int a=0;
String   user=  sessi.getAttribute("user").toString();// USER Id retrived FOR COMMENT AND NAME TO DISPLAY
 id=request.getParameter("msg");
    sessio.setAttribute("id", id);
   // out.print(id);//this id is blog unique id
 // THIS IS FOR SHOWING ALL CONTENT OF CONTENT IE BLOG IN THE PAGE TO READ///// 

if(id==null){
out.print("Something went wrong!!!");
}
    Class.forName("com.mysql.jdbc.Driver");
             
         
              Statement st=con.createStatement();
  // ID  BLOG ID

   rs=null;
rs=st.executeQuery("Select * from content where id="+id );


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
        <%emails=rs.getString("email");%>
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


   </div>
   
   <div class="row">
   <div class="col-lg-4">
   <div class="footer">
   
      
           
  


<%
}

%>


<%
/// likes part started
rs=st.executeQuery("select count( Distinct email) from likes where id="+id);
   
//viewcount
     
while(rs.next()){
     emailcoun= (rs.getInt(1));//this is the result aftercount of views
   //  out.print(emailcoun);
            
}
            
   

%>



<button id="clickme">like:<%=emailcoun%></button>

</div>       
</div>

       
          <script>




var button = document.getElementById("clickme");
  count = 0;
  
button.onclick = function() {

if(count==0){
  count += 1;

  
  button.innerHTML = "liked:"+ count;
  
  window.location.replace("_userview.jsp?name="+count);

 }
  else if(count==1){
  count=count-1;
  button.innerHTML = "like:"+ count;
  
 window.location.replace("_userview.jsp?name="+count);

  
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

     
       
       
       
       
       
       
       
       
<div class="col-lg-4">

 <div class="footer">
  
  
     <h1>
         Howdy  <mark><%=user%></mark>
         
   </h1>
         
      

   
   
<form method="Post" action="${pageContext.request.contextPath}/Comment">
<br>
<br>




<textarea name="Comment" required="required"></textarea>




<input type="hidden" name="id" value=<%=id%>

<br><br>

<input type="submit" value="Comment">
 
</form>


<%



rs=st.executeQuery("Select * from review where id='"+id+"'");
  while (rs.next()) {
  

  
%> 
<b>
   
   <%=rs.getString("username")%>
 
</b><br>
   <%=rs.getString("comment")%>
   <br><hr>
 <%}%>

   
</div> 
</div>
                    <div class="col-lg-4">
   <div class="footer">
       
       
   
   <!here view count is displayed !>
   
<button id="clickme">Views<%=" "%><%=viewcoun%></button>
</div>
   <!here view count is displayed !>
<      
       
       
</div>
       
   </div>
   

</body>





</html>
