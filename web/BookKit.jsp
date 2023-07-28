<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Hospital store</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
    <style>
    table{
        margin-bottom: 100px;
    }
    table tr th{
        width:150px;
        height:50px;
        background: #a7a0a0;    
        color:#413f3f;
        font-size: 22px;
    }
    table tr td{
       
        height:50px;
        background:#4062b7;   
        color:whitesmoke;
        font-size: 20px;
    }
    input{
        height:45px;
        width:250px;
    }
</style>
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
String email=(String)session.getAttribute("email");



                            String rid=request.getParameter("rid");
                            String price=request.getParameter("price");
                            session.setAttribute("rid",rid);
                             session.setAttribute("price",price);
                            if(rid!=null){%>
                            <form action="SPaymentAction.jsp" method="post">
                            <table>
                                <h2>CONFIRM BOOKING</h2>
                               
                                <tr><th colspan="10" style="width:440px;">Payment Mode</th></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="upi" name="payment">UPI</td></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="credit" name="payment">Credit/Debit/ATM Card</td></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="NetBanking" name="payment">Net Banking</td></tr>
                                 <tr><th><input type="submit" value="OK" required></th></tr>
                            </table> 
           </form>
                                <%}%>

        
        </center>


</p>
</body>
</html>