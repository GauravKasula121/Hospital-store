<%-- 
    Document   : AddCovidkit
    Created on : 23 Jul, 2023, 7:02:25 PM
    Author     : GKV
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%try{
       
    
         String name=request.getParameter("covidkit"); 
         String email=request.getParameter("price"); 
         String pass=request.getParameter("desc"); 
       
       
         Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from covidkit where kitname='"+name+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into covidkit values(null,'"+name+"','"+email+"','"+pass+"')");
         
         int i=pst.executeUpdate();
         if(i>0){%>
         <script type="text/javascript">
             window.alert("CovidKit Added Successful..!!");
             window.location="AddMechines.jsp";
             </script>
         
         <%
             //response.sendRedirect("Register.jsp?msg=Registraion Success..!!");
         }else{
%>
         <script type="text/javascript">
             window.alert("CovidKit Adding Failed..!!");
             window.location="AddMechines.jsp";
             </script>
         
         <%
             
         }
         }else{
%>
         <script type="text/javascript">
             window.alert("Covidkit Already Added..!!");
             window.location="AddMechines.jsp";
             </script>
         
         <%
          //response.sendRedirect("Register.jsp?msg=User Already Exist..!!");   
         }
       }catch(Exception e){
        System.out.println(e);
       }
 %>