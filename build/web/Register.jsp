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
			<h3><font size="5" color="white">Hospital Store</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="index.html">Home</a></li>
			<li><a href="User.jsp">Customer</a></li>
                        <li><a href="Seller.jsp">Administrator</a></li>
                         
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/hsp.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
            
            <h2>Customer Registration</h2>
            <%String msg=request.getParameter("msg");
            if(msg!=null){
                %>
                <%=msg%>
                <%
}%>
          <form action="UserRegAction.jsp" method="post">
          <table style="margin-bottom: 100px;">
          
               <tr><th>Name</th><td><input type="text" name="name" required=""></tD></tr>
              <tr><th>Email</th><td><input type="email" name="email" required=""></tD></tr>
           
            
              <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
              <tr><th>Hospital Name</th><td><input type="text" name="hsp" required=""></tD></tr>
              <tr><th>Customer Phone</th><td><input type="number" name="phone" required=""></tD></tr>
               <tr><th></th><td><input type="submit" value="Register">
                           <input type="reset" value="Reset"></tD></tr>
                  
              <tr><th></th><td>Already Have An Account ? <a href="User.jsp">Login</a></td></tr>
                  
          </table>
      </form>
        </center>


</p>
</body>
</html>