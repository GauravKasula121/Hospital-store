<%-- 
    Document   : AdminAction
    Created on : 23 Jul, 2023, 6:55:02 PM
    Author     : GKV
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    
    String query="select * from admin where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){

%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="AdminHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="Admin.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>