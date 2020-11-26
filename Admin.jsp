<!DOCTYPE HTML> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
	    <TITLE>Final Details</TITLE>
	    <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
</HEAD>
<BODY>
 <section class="loginn">
          <nav>
                <div class="row">
                  <a href="home-page.html" ><img src="resources/img/logo1.png" alt="e-sahay logo" class="logo"></a>
                 <ul class="main-nav">
                    <li><a href="Home.jsp"><h2>Logout</h2></a></li>

                    </ul>
                 </div>
            </nav>       
      </section>

<h2>COMPLETE DETAILS</h2>
      <%   int current = 0;
       // declare a connection by using Connection interface 
     Connection connection = null;/* Create string of connection url within specified format with machine 
     name, port number and database name. Here machine name id localhost 
     and database name is student. */
          String connectionURL = "jdbc:mysql://localhost:3306/jproject";
               /*declare a resultSet that works as a table resulted by execute a specified 
     sql query. */
     ResultSet rs = null;
%>
<FORM NAME="form1" ACTION="Admin.jsp" METHOD="GET"><%
if (request.getParameter("hidden") != null) {
    current = Integer.parseInt(request.getParameter("hidden"));
}
    
// Declare statement.
       Statement statement = null;
       try {
               // Load JDBC driver "com.mysql.jdbc.Driver".
         Class.forName("com.mysql.jdbc.Driver").newInstance();
                 /* Create a connection by using getConnection() method that takes 
	 parameters of string type connection url, user name and password to 
	 connect to database. */
         connection = DriverManager.getConnection(connectionURL, "root", "toor");
                  /* createStatement() is used for create statement object that is 
	 used for sending sql statements to the specified database. */
         statement = connection.createStatement();
                // executeQuery() method execute specified sql query. 
         rs = statement.executeQuery("select * from contacts, login where "+
			"login.email = contacts.email");
			         for (int i = 0; i < current; i++) {
           rs.next();
            }
              if (!rs.next()) {
%>
<h2>
<%
        out.println("Sorry ! found some problems with database.");
    } else {
%></h2>
<section class="final-table">
<div class="row">
<TABLE  WIDTH="100%">
    
    <TR><TH width="50%">EMAIL</TH><TD width="50%"> <%= rs.getString("email")%> </TD></tr>
    <TR><TH align="center"><font color="#DF0102">PERSONAL Details</font></TH><TD></TD></tr>
    <TR><TH>Name</TH><TD> <%= rs.getString("firstname")%> </TD></tr>
    <TR><TH>Surname</TH><TD> <%= rs.getString("lastname")%> </TD></tr>
    <TR><TH>Email</TH><TD> <%= rs.getString("email")%> </TD></tr>
	<TR><TH align="center"><font color="#DF0101">COMPLAIN Details</font></TH><TD></TD></tr>
	<TR><TH>complain</TH><TD> <%= rs.getString("complain")%> </TD></tr>
	<TR><TH>mobile</TH><TD> <%= rs.getString("mobile")%> </TD></tr>
	<TR><TH>location</TH><TD> <%= rs.getString("location")%> </TD></tr>
	<TR><TH>aadharno</TH><TD> <%= rs.getString("aadharno")%> </TD></tr>
	<TR><TH>Complain Type</TH><TD> <%= rs.getString("complainT")%> </TD></tr>
</TABLE>



<BR>
<INPUT TYPE="hidden" NAME="hidden" VALUE="<%=current + 1 %>">
<INPUT TYPE="submit" VALUE="next record">
</div>
</section>
</FORM>
<%
    }
} 
catch (Exception ex) {

%>
<h2>
    <%
                out.println("Unable to connect to database.");
            } finally {
                // close all the connections.
                rs.close();
                statement.close();
                connection.close();
            }
    %>
</h2>

</body> 
</html>