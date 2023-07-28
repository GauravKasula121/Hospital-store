

<%@page import="com.database.Queries"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String cid=request.getParameter("id");
try{
    String query="update labor_booking set status='Accepted' where id='"+cid+"'";
    int r=Queries.getExecuteUpdate(query);
    if(r>0){
      response.sendRedirect("LViewBookings.jsp?msg=success");  
    }else{
     response.sendRedirect("LViewBookings.jsp?msg=failed");    
    }
    
}catch(Exception e){
  out.println(e);  
}


%>