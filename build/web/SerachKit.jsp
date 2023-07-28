<%-- 
    Document   : SerachKit
    Created on : 23 Jul, 2023, 7:18:08 PM
    Author     : GKV
--%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Hospital Store</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header" style="background: navy;">
		<div id="logo">
			<h3><font size="5" color="white">Hospital Store</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="UserHome.jsp">Home</a></li>
			<li><a href="SerachKit.jsp">Search Product</a></li>
                       
                        <li><a href="ViewBookings.jsp">View Bookings</a></li>
                        <li><a href="User.jsp">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/hsp.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
            <%
            
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String mobile=(String)session.getAttribute("mobile");
            %>
            <h1>SEARCH PRODUCT</h1>
            
            &nbsp;&nbsp;&nbsp;&nbsp;
            <form action="SearchAction.jsp" method="post">
          <table style="margin-bottom: 100px;">
             <tr><th>Search product</th><td><input type="text" name="search" required=""></tD></tr>
                  
              <tr><th></th><td><input type="submit" value="Search Product"> </td></tr>
           </table>
      </form>
        </center>


</p>
</body>
</html>