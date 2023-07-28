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
			<h3><font size="5" color="white">Hospital Store</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="AdminHome.jsp">Home</a></li>
			<li><a href="AddMechines.jsp">Add CovidKit</a></li>
                        <li><a href="ViewMachines.jsp">View CovidKit</a></li>
                       
                        <li><a href="Admin.jsp">Logout</a></li>
			
                       
              
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
String mobile=(String)session.getAttribute("mobile");
            %>
            <h1>View CovidKit</h1>
            &nbsp; &nbsp; &nbsp; &nbsp;
            <table border="1">
                <tr><th>CovidKit Name</th>
                <th>Price</th>
                <th>Precautions</th>
                <th>Delete</th>
                 </tr>
                <%try{
                 ResultSet r=Queries.getExecuteQuery("select * from covidkit");
                 while(r.next()){
                     %>
                     <tr>
                         <td><textarea cols="40" rows="5"><%=r.getString("kitname")%></textarea></td>
                         <td><%=r.getString("price")%></td>
                         <td><textarea cols="20" rows="5"><%=r.getString("precaution")%></textarea></td>
                         <td><a href="DeleteKit.jsp?id=<%=r.getString("id")%>">Delete</a></td>
                          
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