
<html>
<head>
    <title>Sign Up </title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

   <%
      HttpSession sessio=request.getSession();
  sessio.invalidate();
    
  
//SELECT  count(email) from content where email='meroid13@gmail.com';
   %>

       
                <div class="signup-content">
                    <div class="signup-form">
				<a href="index.jsp">	<img src="image\download-96x104.png"></a>
                        <h2 class="form-title">Sign up</h2>
                        <form name="signup" action="${pageContext.request.contextPath}\signup" method="post"   >
                            <div class="form-group">
                                <input type="text" name="username"  placeholder="Username"/>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email"  placeholder="Your Email"/>
                            </div>
							<div class="form-group">
                                <input type="text" name="phone"  pattern="[0-9]{3}[0-9]{4}[0-9]{3}" placeholder="phone number [0449650724]"/>
                            </div>

							
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password1" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup"  class="form-submit" value="Register"/>
                            </div>
 <%
        String msg = request.getParameter("msg");
        if(msg!=null){
            {%><script>
                
            alert("Password not Mathed");
</script>
                <%
            }
        }
       %>
        <%
        String msg1 = request.getParameter("msg1");
        if(msg1!=null){
            {%><script>
                
            confirm("Email or phone number already used. Try using other");
</script>
                <%
            }
        }
       %>

              <%
              
              out.print(msg1);
              %>             
                            
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="image/signup-image.jpg" alt="sign up image"></figure>
                        <a href="enterlog.php" class="signup-image-link">I am already member</a>
                    </div>
                </div>
          
     
      
    

    </body>
</html>