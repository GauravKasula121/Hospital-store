<%-- 
    Document   : DeleteKit
    Created on : 23 Jul, 2023, 7:13:58 PM
    Author     : GKV
--%>



<%@page import="com.database.Queries"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String cid=request.getParameter("id");
try{
    String query="delete from covidkit where id='"+cid+"'";
    int r=Queries.getExecuteUpdate(query);
    if(r>0){
    %>
      <script type='text/javascript'>
          window.alert("Product deleted successfully!!");
          window.location="ViewMachines.jsp";
      </script>
      <%
 
    }else{
   %>
      <script type='text/javascript'>
          window.alert("Unable to delete the product try again..");
          window.location="ViewMachines.jsp";
      </script>
      <%    
    }
    
}catch(Exception e){
  out.println(e);  
}


%>
