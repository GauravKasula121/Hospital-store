<%-- 
    Document   : Admin
    Created on : 23 Jul, 2023, 6:54:18 PM
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
	<div id="header" style="background:navy;">
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
                        <li><a href="Admin.jsp">Administrator</a></li>
			
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/hsp.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
            
            <h2>Admin Login</h2>
           <form action="AdminAction.jsp" method="post">
          <table style="margin-bottom: 100px;">
             <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
                    <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Login"> <input type="reset" value="Reset"></td></tr>
           </table>
      </form>
            
            
            
        </center>


</p>
</body>
</html>