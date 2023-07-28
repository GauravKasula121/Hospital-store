<%-- 
    Document   : BookAction
    Created on : 4 Feb, 2023, 5:05:26 PM
    Author     : GKV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String rollno=(String)session.getAttribute("rollno");
        String percen=(String)session.getAttribute("percentage");
            String email=(String)session.getAttribute("email");
    
try{

String rid=(String)session.getAttribute("rid");
String price=(String)session.getAttribute("price");
String payment=request.getParameter("payment");

String cardno=request.getParameter("cardno");
String cardtype=request.getParameter("cardtype");
String cvv=request.getParameter("cvv");
String expiry=request.getParameter("expiry");


ResultSet r=Queries.getExecuteQuery("Select count(*) from book_kit where rid='"+rid+"' and email='"+email+"'");
int c=0;
while(r.next()){
    c=r.getInt(1);
}
if(c==0){

int i=Queries.getExecuteUpdate("insert into book_kit values(null,'"+email+"','"+rid+"','"+price+"',now())");
if(i>0){
    %>
    <script type="text/javascript">
       window.alert("Covid_kit Booked Successfull..!!");
       window.location="SerachKit.jsp";
        </script>
    <%
}else{
 %>
    <script type="text/javascript">
       window.alert("Booking Failed..!!");
       window.location="SerachKit.jsp";
        </script>
    <%
}
}else{
%>
    <script type="text/javascript">
       window.alert("Covid Kit Already Booked..!!");
       window.location="SerachKit.jsp";
        </script>
    <%
}
}catch(Exception e){
  out.println(e);  
}
%>

