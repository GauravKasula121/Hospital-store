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
			<li class="first current_page_item"><a href="AdminHome.jsp">Home</a></li>
			<li><a href="AddMechines.jsp">Add CovidKit</a></li>
                        <li><a href="ViewMachines.jsp">View CovitKit</a></li>
                      
                        <li><a href="Admin.jsp">Logout</a></li>
			
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<div id="splash">
		<img class="pic" src="images/hsp.jpg" width="870" height="230" alt="" />
	</div>
	<br/>
	<center>
        
        
            
         <center>
            
            <h2>Add CovidKit Here</h2>
            <%String msg=request.getParameter("msg");
            if(msg!=null){
                %>
                <%=msg%>
                <%
}%>
          <form action="AddCovidkit.jsp" method="post">
          <table style="margin-bottom: 100px;">
          
              <tr><th>Covid-Kit Name</th><td><input type="text" name="covidkit" required=""></tD></tr>
             
              <tr><th>Price</th><td><input type="number" name="price" required=""></tD></tr>
              <tr><th>Precautions</th><td><textarea cols='30' rows='10' name="desc" required=""></textarea></tD></tr>
            
                <tr></tr><tr></tr><tr></tr><tr></tr>
              <tr><th></th><td><input type="submit" value="Add CovidKit">
                           <input type="reset" value="Reset"></tD></tr>
                  
            
                  
          </table>
      </form>
        </center>
   
        </center>


</p>
</body>
</html>