

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%try{
                 
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String mobile=(String)session.getAttribute("mobile");
       String owner=(String)session.getAttribute("owner");

         String mid=request.getParameter("mid");  
         String price=request.getParameter("price"); 
         String months=request.getParameter("months"); 
         String emi=request.getParameter("emi"); 
       
       
         Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from book where email='"+id+"' and mid='"+mid+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into book values(null,'"+id+"','"+mid+"','"+owner+"','"+price+"','"+months+"','"+emi+"',now(),'waiting')");
         
         int i=pst.executeUpdate();
         if(i>0){
             response.sendRedirect("ViewAllMachines.jsp?msg=Machine Booked Successfully..!!");
         }else{
               response.sendRedirect("ViewAllMachines.jsp?msg=Machine Booking Failed..!!");
         }
         }else{
          response.sendRedirect("ViewAllMachines.jsp?msg= Already Booked Exist..!!");   
         }
       }catch(Exception e){
        System.out.println(e);
       }
 %>