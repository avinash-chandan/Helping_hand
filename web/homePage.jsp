<%-- 
    Document   : homePage
    Created on : 3 Apr, 2019, 10:49:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pojo.*" %>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            .head{
                background-color: midnightblue;
                position: fixed;
                top: 0;
                left:0;
                width: 100%;
                height: 150px;
                z-index: 1;
            }
            .topmost{
                position:relative;
                display: inline-block;
                float: right;
                padding-bottom: 100px
            } 
            .logo img {
                float: left;
                width: 120px;
                height: 120px;
                padding-left: 500px;
                padding-bottom: 50px;
            }

            .logo h1 {
                position: relative;
                top: 60px;
                left: 10px;
            }
            .im 
            {
                float: right;
                padding-right: 60px;
                top:0;
            }
            .im img
            {
                cursor: pointer;
                border-radius: 50%;
                border:2px solid black;
            }
            .option
            {  
                width:20px;
                background-color:black;
                border:1px solid white;
                border-radius:10px;
                width:130px;
                display: none;
                position: absolute;
                z-index: 1;
            }
            .option a{
                text-align:center;
                color: white;
                padding:12px 12px;
                display: block;
            }
            .option a:hover
            {
                background-color: blue;
            }
            .topmost:hover .option
            {
                display: block;
            }
            .side-content
            {
                height: 100%;
                width: 220px;
                position: fixed;
                z-index: 1;
                top:0;
                left: 0;
                background-color: steelblue;
                overflow-x: hidden;
                padding-top: 180px;
                opacity:.9;
            }
            .side-content a{
                margin: 16px;
                padding: 6px 8px 6px 16px;
                font-size: 25px;
                color:wheat;
                display: block;
            }
            .side-content a:hover
            {
                background-color: black;
            }
            .inside-content
            {
                padding-left: 35%;
                padding-top: 5%;
            }
            .inside-content
            {
                overflow: auto;
                padding-top: 15%
            }
        </style>
    </head>

    <body style="background-color:#f3eed6">
        <%
            if (session.getAttribute("userStatus") != null) {
                if (session.getAttribute("userStatus") == "1") {
                    session.setAttribute("userid",session.getAttribute("userid"));

        %>
        <div class="head">
            <div class="logo">
                <img src="helping hand.jpg" width="100" height="100" name="logo"><h1>HELPING HAND</h1>
            </div>
            <div class="topmost">
                <div class="im">
                    <img src="Screenshot_2018-12-25-00-31-22-882_com.tencent.ig.png" width="60" height="60"><h2 style="float:left"><%=uobj.getName(Integer.parseInt(session.getAttribute("userid").toString()))%> &nbsp;</h2>
                    <div class="option">
                        <a href="profile.jsp">Profile</a>
                        <a href="feedback.jsp">Feedback</a>
                        <a href="Controller.jsp?page=logout">Log Out</a>

                    </div></div>
            </div>  
        </div>
        <div class="side-content">
            <a href="homePage.jsp">Home</a>
            <a href="donatefood.jsp">Donate Food</a>
            <a href="donateEWaste.jsp">Donate E-Waste</a>
            <a href="donateHouseholds.jsp">Donate Households</a>
            <a href ="Educate.html">Learn About Waste Management</a>
        </div> 

        <div class="inside-content">
            <div class="inside">
                <h3 style="display: inline-block ">This web site is for helping poor peoples and also for saving environment<br>&nbsp;&nbsp;&nbsp;&nbsp; from e-waste by donating thing which you don't want any<br> more
                    give it to other who wants that.Be part of this startup and help other.</h3><br><br>
                <h3 style="display: inline-block;padding-left: 10% "> " By Donating, you will also be supporting <br>&nbsp;&nbsp;&nbsp;your own community and literally saving<br>&nbsp;&nbsp;&nbsp;&nbsp;lives with every pint donate. "<br>
                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by- Pam Henry
                </h3>
                <br>
                <br><br></div>
            <div class="inside-img">
                <img src="23.jpg" width="200" height="200">
                <img src="14.jpg" width="200" height="200">
                <img src="13.jpg" width="200" height="200">
                <img src="12.jpg" width="200" height="200">
            </div>
        </div>
        <%            } else {
                    response.sendRedirect("login.jsp");
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        %>

    </body>
</html>