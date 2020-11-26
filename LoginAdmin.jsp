<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html>
 <head>
 	<link rel="stylesheet" href="css/login-register.css">
	<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
	<link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>ADMIN PAGE</title>
    </head>
     <body>
 
    <section class="loginn">
          <nav>
                <div class="row">
                  <a href="home-page.html" ><img src="resources/img/logo1.png" alt="e-sahay logo" class="logo"></a>
                 </div>
            </nav>       
      </section>
       
       <div class="main-content">
       
        <form class="form-register" action="LoginCheck.jsp" method="post" name="myform" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Login</h1>
                    </div>
					
					<p style="color:red">				   		
					<%
					if(request.getAttribute("errorMsg")!=null)
					{
						out.println(request.getAttribute("errorMsg")); //error message for email or password 
					}
					%>
					</p>
				   
			

                    <div class="form-row">
                        <label>
                            <span>Username</span>
                            <input type="text" name="username" id="username" placeholder="enter username">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="password" id="password" placeholder="enter password">
                        </label>
                    </div>

					<input type="submit" name="btn_login" value="submit">
                    
                </div>
				

            </div>

        </form>
       
       </div>  
           </body>
            </html>

