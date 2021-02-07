<html>
<head>
    <title>Login form</title>

  
   
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    
    <%
        
       
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
   response.setHeader("Pragma", "no-cache");
   response.setHeader("Expires", "0");
   
     HttpSession sessio=request.getSession();
  sessio.invalidate();
  
    %>

    <div class="main">


                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="image/signin-image.jpg" alt="sing up image"></figure>
                        <a href="signup.jsp" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
					<a href="index.jsp">
					
                        <h2 class="form-title"><a href="index.jsp">
					<img src="image\logo.png"style="width:10%"></a>
                Login</h2>
                        <form method="POST" class="register-form" action="${pageContext.request.contextPath}/login">
                            <div class="form-group">
							
                                <input type="text" name="email" placeholder="Email or phone number"/>
                            </div>
                            <div class="form-group">
                                
                                <input type="password" name="password"  placeholder="Password"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin"  class="form-submit" value="Log in"/>
                            </div>
                        </form>
                            <%
        String msg = request.getParameter("msg");
        if(msg!=null){
            {%><script>
                
            alert("Email or phone number or password not matched");
</script>
                <%
            }
        }
       %>
 
                       </div>
                </div>
            </div>
        </section>


    </body>
</html>
