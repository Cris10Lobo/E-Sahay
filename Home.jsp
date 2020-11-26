<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
    </head>
    <body>       
         <section class="loginn">
          <nav>
                <div class="row">
                  <a href="home-page.html" ><img src="resources/img/logo1.png" alt="e-sahay logo" class="logo"></a>
                 </div>
            </nav>       
      </section>
        <h2>
            <%
            String a=session.getAttribute("username").toString();
            out.println("Hello  "+a);
            %>
            </h2>
         
         <h2>
        <a href="Logout.jsp">Logout</a><br>
        <a href ="Admin.jsp">ADMIN VIEW</a><br>
        </h2>  

    </body>
</html>

