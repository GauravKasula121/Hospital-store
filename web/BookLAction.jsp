

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
       
         String lid=request.getParameter("lid");  
         String date=request.getParameter("date"); 
         String price=request.getParameter("price"); 
      
       
         Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from labor_booking where labor='"+lid+"' and days='"+date+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into labor_booking values(null,'"+id+"','"+lid+"','"+date+"','"+price+"',now(),'waiting')");
         
         int i=pst.executeUpdate();
         if(i>0){
             response.sendRedirect("ViewDailyLabors.jsp?msg=Labor Booked Successfully..!!");
         }else{
               response.sendRedirect("ViewDailyLabors.jsp?msg=Labor Booking Failed..!!");
         }
         }else{
          response.sendRedirect("ViewDailyLabors.jsp?msg= Already Booked Exist..!!");   
         }
       }catch(Exception e){
        System.out.println(e);
       }
 %>