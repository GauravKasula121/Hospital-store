<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Farmer Service Portal</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header" style="background: navy;">
		<div id="logo">
			<h3><font size="5" color="white">Farmer Service Portal</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="UserHome.jsp">Home</a></li>
			<li><a href="ViewAllMachines.jsp">View Machines</a></li>
                          <li><a href="ViewDailyLabors.jsp">View Daily Labors</a></li>
                        <li><a href="ViewBookings.jsp">View Bookings</a></li>
                       
                        <li><a href="User.jsp">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/farmer.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
            <%
            
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String mobile=(String)session.getAttribute("mobile");

String mid=request.getParameter("mid");

float price=Float.parseFloat(request.getParameter("price"));
int m=Integer.parseInt(request.getParameter("months"));

float mm=price/m;
            %>
            <h1>Book Machines</h1>
            <hr>
         
                
                  <form action="BookMAction1.jsp" method="post">
          <table style="margin-bottom: 100px;">
          
              <tr><th>Machine ID</th><td><input type="text" name="mid" value="<%=mid%>" readonly=""></tD></tr>
             
              <tr><th>Price</th><td><input type="text" name="price" value="<%=price%>" readonly=""></tD></tr>
              <tr><th>EMI Months</th><td><input type="number" name="months" value="<%=m%>" readonly></tD></tr>
             <tr><th>EMI </th><td><input type="text" name="emi" value="<%=mm%>" readonly></tD></tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
              <tr><th></th><td><input type="submit" value="Book Now">
                           <input type="reset" value="Reset"></tD></tr>
                  
            
                  
          </table>
      </form>
        
        </center>


</p>
</body>
</html>