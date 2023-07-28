

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%try{
       
    
         String name=request.getParameter("name"); 
         String email=request.getParameter("email"); 
         String pass=request.getParameter("pass"); 
         String hsp=request.getParameter("hsp"); 
         String phone=request.getParameter("phone"); 
       
       
         Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from user where name='"+name+"' and email='"+email+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into user values(null,'"+name+"','"+email+"','"+hsp+"','"+pass+"','"+phone+"')");
         
         int i=pst.executeUpdate();
         if(i>0){%>
         <script type="text/javascript">
             window.alert("registration Successful..!!");
             window.location="index.html";
             </script>
         
         <%
             //response.sendRedirect("Register.jsp?msg=Registraion Success..!!");
         }else{
%>
         <script type="text/javascript">
             window.alert("registration Failed..!!");
             window.location="index.html";
             </script>
         
         <%
             
         }
         }else{
%>
         <script type="text/javascript">
             window.alert("Email Id or Name Already Exist please try with other details..!!");
             window.location="index.html";
             </script>
         
         <%
          //response.sendRedirect("Register.jsp?msg=User Already Exist..!!");   
         }
       }catch(Exception e){
        System.out.println(e);
       }
 %>