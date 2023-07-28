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
<body>
<div id="wrapper">
	<div id="header" style="background: navy;">
		<div id="logo">
			<h3><font size="5" color="white">Hospital Store</h3>
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
            <h3>View All My Booked CovidKits</h3>
            <hr>
         
                
                <table border="1">
                <tr><th>CovidKit Name</th>
                <th> Price</th>
                <th> Precautions</th>
                <th>Date of Booked</th>
               
                </tr>
                <%try{
                 ResultSet r=Queries.getExecuteQuery("select * from covidkit c, book_kit b where c.id=b.kit_id and b.email='"+email+"'");
                 while(r.next()){
                     %>
                     <tr>
                         <td><textarea cols="20" rows="5"><%=r.getString("c.kitname")%></textarea></td>
                         <td><%=r.getString("c.price")%></td>
                         <td><textarea cols="20" rows="5"><%=r.getString("c.precaution")%></textarea></td>
                           <td><%=r.getString("b.date")%></td>
                             
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