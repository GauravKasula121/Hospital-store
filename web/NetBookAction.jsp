<%-- 
    Document   : NetBookAction
    Created on : 23 Jul, 2023, 7:45:22 PM
    Author     : GKV
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<%

try{

    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String bank=request.getParameter("bank");
    
 String price=(String)session.getAttribute("price");

      if(username.equalsIgnoreCase("Banking")&& password.equalsIgnoreCase("Banking")){
     %>
     <center>
     <form action="BookAction.jsp" method="post">
                   <table border="1">
                              
                               
                                <tr><th colspan="10" style="width:440px;">Payment Mode</th></tr>
                                <tr><th colspan="10" style="width:440px;">Net Banking :: <%=bank%></th></tr>
                               
                                <tr><th colspan="15">Total Payment : <font color="greenyellow"><%=price%> Rs/-</font></th></tr>
                                 
                                 <tr><th><input type="submit" value="Confirm" required></th></tr>
                            </table> 
                   </form> 
     </center>
     
     <%
    }else{
    %>
    <script type='text/javascript'>
        window.alert("Please Check UerName/Password");
        window.location="Admin.jsp";
    </script>
    <%
    }
}catch(Exception e){
 out.println(e);   
}



%>