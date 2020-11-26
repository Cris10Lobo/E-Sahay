<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grievance form</title>
 		<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
</head>
<body>

<section class="loginn">
          <nav>
                <div class="row">
                    <a href="home-page.html"><img src="resources/img/logo1.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                    <li><a href="Logout.jsp"><h2>Logout</h2></a></li>

                    </ul>
                </div>
            </nav>
            
        </section>

  <section class="section-form">
            <div class="row">
                <h2>Grievance form</h2>
            </div>
            <div class="row">
                <form method="post" action="uploadServlet" class="gre-form" enctype="multipart/form-data">
                    
                    <!--COMPLAINT-->
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Complaint</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" name="complain" id="complain" placeholder="Your Complain" required>
                        </div>
                    </div>
                    
                    <!--MOBILE-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Mobile</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="number" name="mobile" id="Mobile" placeholder="Your Mobile Number" required>
                        </div>
                    </div>
                    
                    <!--COMPLAINT TYPE-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="find-us">Complaint Type</label>
                        </div>
                        <div class="col span-2-of-3">
                            <select name="find-us" id="find-us">
                                <option value="Pothole">Pothole</option>
                                <option value="Water Log" selected>Water Log</option>
                                <option value="Broken street light">Broken street light</option>
                                <option value="Garbage Dumped">Garbage Dumped</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div>
                    
                    <!--LOCATION-->                        
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Location</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="text" name="location" id="location" placeholder="Enter the address of Grievance" required>
                        </div>
                    </div>
                    
                      <!--EMAILID-->                        
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Email-Id</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="email" name="email" id="email" placeholder="Your Email" required>
                        </div>
                    </div>
                    
                     <!--AADHAR NO-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Aadhar No.</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="number" name="aadharno" id="aadharno" placeholder="Your Aadhar Number" required>
                        </div>
                    </div>
                    
                      <!--PHOTO-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Photo</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="file" name="photo" id="photo" placeholder="Enter suitable photo" required>
                        </div>
                    </div>
                    
                    <!--Submit-->
                     <div class="row">
                        <div class="col span-1-of-3">
                            <label>&nbsp;</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="submit" value="Save">                       
                             </div>
                    </div>
                    
                    
                </form>
                
            </div>
        
        </section>
   
</body>
</html>