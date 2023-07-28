<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
            <h1>Welcome To ::<%=name%></h1>
    <h2>Products</h2>
       
         <form action="UserRegAction.jsp" method="post">
          
               
                <%try{
                    String search=request.getParameter("search");
                 ResultSet r=Queries.getExecuteQuery("select * from covidkit");
                 while(r.next()){
                     %>
                     <table border="1" style="margin-bottom: 100px;">
                     <tr>
                         <th>CovidKit Name</th><td><%=r.getString("kitname")%></td></tr>
                         <tr><th>Price</th> <td><%=r.getString("price")%></td></tr>
                         <tr> <th>Precautions</th><td><%=r.getString("precaution")%></td></tr>
          </tr>
                <th>Book</th><td><a href="BookKit.jsp?rid=<%=r.getString("id")%>&price=<%=r.getString("price")%>"><input type="button" value="Proceed To Buy" style="height:50px;width:150px;background: gainsboro;"></a></td></tr>
                         
                     </tr>
                     
                     <%
                 }
                }catch(Exception e){
                    System.out.println(e);
}%>
          </table>
            
            
            
        </center>


</p>
</body>
</html>