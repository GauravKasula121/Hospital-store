<%-- 
    Document   : SPaymentAction
    Created on : 23 Jul, 2023, 7:34:55 PM
    Author     : GKV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Hospital Store</title>
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
%>
                           
                
                  <%String payment=request.getParameter("payment");
                  String price=(String)session.getAttribute("price");
                  if(payment.equals("upi")){
                    %>
                    
                    <form action="BookAction.jsp" method="post">
                            <table>
                              
                               
                                <tr><th colspan="10" style="width:440px;">Payment Mode</th></tr>
                                <tr><th colspan="10" style="width:440px;">UPI</th></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="gpay" name="payment" required><image src="images/gpay.png" width="40" height="40"/>GPay</td></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="PhonePe" name="payment"required><image src="images/download.png" width="40" height="40"/>PhonePe</td></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="Paytm" name="payment" required><image src="images/paytm.png" width="40" height="40"/>pay Tm</td></tr>
                                <tr><td colspan="15">Total Payment : <font color="greenyellow"><%=price%> $-</font></td></tr>
                             
                                 <tr><th><input type="submit" value="OK" required></th></tr>
                            </table> 
           </form> 
                    <%
                  }else if(payment.equals("credit")){%>
                   <form action="BookAction.jsp" method="post">
                   <table>
                              
                               
                                <tr><th colspan="10" style="width:440px;">Payment Mode</th></tr>
                                <tr><th colspan="10" style="width:440px;">Credit/Debit/ATM Card</th></tr>
                                <tr><td colspan="15"><input type="radio" style="height:20px;width:40px;" value="gpay" name="payment" required>Credit Card
                                    <input type="radio" style="height:20px;width:40px;" value="PhonePe" name="payment"required>Debit Card</td></tr>
                                
                              
                                <tr><td colspan="15"><input type="text"style="height:50px;width:440px;" pattern="[0-9]{16}"  name="cardno" placeholder="Card Number" required></td></tr>
                                <tr><td colspan="15"><input type="text"style="height:50px;width:440px;" maxlength="40"   name="cardname" placeholder="Name On Card" required></td></tr>
                                <tr><td colspan="15"><input type="password" style="height:50px;width:440px;"  name="cvv" placeholder="CVV" required></td></tr>
                                <tr><td colspan="15"><input type="text"  style="height:50px;width:440px;" name="expdate" placeholder="MM/YYYY" required></td></tr>
                                <tr><td colspan="15">Total Payment : <font color="greenyellow"><%=price%> Rs/-</font></td></tr>
                             
                                 <tr><th><input type="submit" value="OK" required></th></tr>
                            </table> 
                   </form> 
                  
                  <%

}else{
%>
<form action="NetBookAction.jsp" method="post">
                   <table>
                              
                               
                                <tr><th colspan="10" style="width:440px;">Payment Mode</th></tr>
                                <tr><th colspan="10" style="width:440px;">Net Banking</th></tr>
                                <tr><td colspan="15"><select style="height:50px;width:440px;" name="bank" required>
                                            <option></option>
                                            <option>SBI</option>
                                            <option>ICICI</option>
                                            <option>Axis</option>
                                            <option>Kotak</option>
                                            <option>HDFC</option>
                                            
                                        </select></td></tr>
                                  <tr><td colspan="15"><input type="text"style="height:50px;width:440px;" maxlength="40"   name="username" placeholder="UserName" required></td></tr>
                                <tr><td colspan="15"><input type="password" style="height:50px;width:440px;"  name="password" placeholder="password" required></td></tr>
                                     
                                 <tr><th><input type="submit" value="OK" required></th></tr>
                            </table> 
                   </form> 
<%
}
                  %>
                           
                             

        
        </center>


</p>
</body>
</html>