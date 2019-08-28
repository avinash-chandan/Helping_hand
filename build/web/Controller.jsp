<%-- 
    Document   : Controller
    Created on : 4 Apr, 2019, 12:39:42 PM
    Author     : AVINASH
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="iobj" class="DAO.FoodDAO" scope="page"/>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<jsp:useBean id="hobj" class="DAO.HouseHoldDAO" scope="page"/>
<jsp:useBean id="eobj" class="DAO.EWasteDAO" scope="page"/>
<%@page import="java.util.*" %>
<%@page import="pojo.*" %>
<!DOCTYPE html>
<%
    if (request.getParameter("page").equalsIgnoreCase("food")) {
        int userid = Integer.parseInt(request.getParameter("userid").toString());
        String name = request.getParameter("itemname");
        String description = request.getParameter("description");
        Food food = new Food(name, description, userid);
        boolean done = iobj.insertFood(food);
        if (done) {
            session.setAttribute("status", "true");
        } else {
            session.setAttribute("status", "false");
        }
        session.setAttribute("userid", userid);
        response.sendRedirect("homePage.jsp");
    } else if (request.getParameter("page").equalsIgnoreCase("login")) {
        if (uobj.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())) {
            session.setAttribute("userStatus", "1");
            session.setAttribute("userid",uobj.getUserId(request.getParameter("username")));
            System.out.println("user id - " + uobj.getUserId(request.getParameter("username")));
            response.sendRedirect("homePage.jsp");
        } else {
            request.getSession().setAttribute("userStatus", "-1");
            response.sendRedirect("login.jsp");
        }
    } else if (request.getParameter("page").equalsIgnoreCase("EWaste")) {
        int userid = Integer.parseInt(request.getParameter("userid").toString());
        session.setAttribute("type", session.getAttribute("type"));
        String name = request.getParameter("itemname");
        String description = request.getParameter("description");
        String type = request.getParameter("type");
        EWaste ewaste = new EWaste(name, type, description, userid);
        boolean done = eobj.insertEWaste(ewaste);
        if (done) {
            session.setAttribute("status", "true");
        } else {
            session.setAttribute("status", "false");
        }
        session.setAttribute("userid", userid);
        response.sendRedirect("homePage.jsp");
    } else if (request.getParameter("page").equalsIgnoreCase("houseWaste")) {
        int userid = Integer.parseInt(request.getParameter("userid").toString());
        String name = request.getParameter("itemname");
        String description = request.getParameter("description");
        String type = request.getParameter("type");
        HouseHold house = new HouseHold(name, type, description, userid);
        boolean done = hobj.insertHousehold(house);
        if (done) {
            session.setAttribute("status", "true");
        } else {
            session.setAttribute("status", "false");
        }
        session.setAttribute("userid", userid);
        response.sendRedirect("homePage.jsp");
    }
    else if(request.getParameter("page").toString().equals("delFood")){
    iobj.deleteFood(Integer.parseInt((String)session.getAttribute("userId")),
    (String)session.getAttribute("ItemName"));
    System.out.println("deleted food sucessfully");
    }
    else if(request.getParameter("page").toString().equals("delEwaste")){
    eobj.deleteEwaste(Integer.parseInt(session.getAttribute("userId").toString()),
    (String)session.getAttribute("ItemName"),(String)session.getAttribute("type"));
    
    }
    else if(request.getParameter("page").toString().equals("delHouse")){
    hobj.deleteHousehold(Integer.parseInt((String)session.getAttribute("userId")),
    (String)session.getAttribute("ItemName"),(String)session.getAttribute("type"));
    System.out.println("deleted household sucessfully");
    }
    else if (request.getParameter("page").toString().equals("logout")) {
        session.setAttribute("userstatus", "0");
        session.removeAttribute("userid");
        response.sendRedirect("login.jsp");
    }
    else if (request.getParameter("page").toString().equals("register")){
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
        user.setUserid(uobj.getUserId()+1);
        boolean status=uobj.registerUser(user);
        if(status==true)
        {
             session.setAttribute("valid", "true");
             response.sendRedirect("login.jsp");
        }
        else
        {
            session.setAttribute("valid", "false");
            response.sendRedirect("register.jsp");
        }
    }
    else {
        System.out.println("Do nothing");
    }

%>
