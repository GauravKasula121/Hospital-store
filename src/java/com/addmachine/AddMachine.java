/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.addmachine;

import com.database.Dbconnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author GKV
 */
@MultipartConfig(maxFileSize=16*1024*1024)
public class AddMachine extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            HttpSession session=request.getSession();
            String email=(String)session.getAttribute("email");
                    
        String mname=request.getParameter("mname");  
        String price=request.getParameter("price");
        String usage=request.getParameter("usage");
        Part p=request.getPart("Image");
        
        InputStream in=p.getInputStream();
        
        Connection con=Dbconnection.getcon();
        PreparedStatement pst=con.prepareStatement("insert into machine values(null,?,?,?,?,?)");
        pst.setString(1, email);
        pst.setString(2, mname);
        pst.setString(3, price);
        pst.setString(4, usage);
        pst.setBlob(5, in);
        int i=pst.executeUpdate();
        if(i>0){
            response.sendRedirect("AddMechines.jsp?msg=Machine Details Added Successfully..!!");
        }else{
            response.sendRedirect("AddMechines.jsp?msg=Machine Details Failed To Add..!!");
        }
        
            
        }catch(Exception e){
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
