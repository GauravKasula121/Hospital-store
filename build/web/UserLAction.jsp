    
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("name");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    
    String query="select * from user where name='"+uname+"'and password='"+pass+"' and email='"+email+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
   
session.setAttribute("id",i.getString("id"));
session.setAttribute("name",i.getString("name"));
session.setAttribute("email",i.getString("email"));
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="UserHome.jsp";
      </script>
      <%
          
    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="User.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>