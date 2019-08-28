/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register.controller;

import DAO.userDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.User;

/**
 *
 * @author AVINASH
 */
public class Register extends HttpServlet {
private Connection conn;
    private PreparedStatement ps;
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String name=request.getParameter("name");
       String uname=request.getParameter("uname");
		String email=request.getParameter("email");
        String password=request.getParameter("pass");
        String mob=request.getParameter("contactno");
         String locality=request.getParameter("city");
          String add=request.getParameter("address");
          User user=new User();
        user.setName(name);
        user.setUsername(uname);
        user.setEmail(email);
        user.setPassword(password);
        user.setPhoneno(mob);
        user.setAddress(add);
        user.setLocality(locality);
        user.setDonatepoint(0);
        user.setReceivepoint(0);
        user.setUserid(userDAO.getUserId()+1);
        System.out.println("userId = "+userDAO.getUserId()+" username="+user.getUsername());
        try{
            boolean result=userDAO.registerUser(user);
            if(result)
            {
                response.sendRedirect("homePage.jsp");
                
            }
            else{
                response.sendRedirect("register.jsp");
            }
        }
            catch(Exception e){
                System.out.println("Error in DB"+e);
            }
        
    }

}