<%-- 
    Document   : ShowEWaste
    Created on : 5 Apr, 2019, 1:17:20 AM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="pojo.*" %>
<jsp:useBean id="eobj" class="DAO.EWasteDAO" scope="page"/>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-waste</title>
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
            .content-area{
    color: #3C4858;
    font-family: sans-serif;
	position: absolute;
	right: 0;
	top: 240px;
	min-width: calc( 100% - 300px );
	padding: 20px; 
	padding-left: 30px;
}
.submit{
                padding:10px 40px;
                font-size:24px;
                text-align:center;
                cursor:pointer;
                outline:none;
                color:black;
                border:none;
                background-color:aqua;
                border-radius:15px;
                box-shadow:0 9px grey;
            }
        </style>
    </head>
   <body style="background-color:#f3eed6">
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
                      <div class="content-area">
        <%
            int userid = Integer.parseInt(session.getAttribute("userid").toString());
        session.setAttribute("userid", userid);
        session.setAttribute("type",request.getParameter("type"));
        ArrayList<Show> showList=eobj.getallresult(request.getParameter("area"),request.getParameter("type"));
        for(int i=0;i<showList.size();i++)
        {
            Show sh=showList.get(i);
            System.out.println("inside show"+sh.getAddress()+sh.getDescription());
            %>
            <center><form action="homePage.jsp" method="post">
             <h3>Donner name:-</h3><%=sh.getUsername() %>
             <h3>Donner phone no.:-</h3><%=sh.getPhoneno()%>
             <h3>Donner Address:-</h3><%=sh.getAddress()%>
             <h3> Item name:-</h3><%=sh.getItemname()%>
             <h3> Item Description:-</h3><%=sh.getDescription()%>
             <br>
             <% session.setAttribute("ItemName",sh.getItemname());
             session.setAttribute("userId", sh.getUserid());        
             %>
             <input type="hidden" value="delEwaste" name="page">
             <input class="submit" type="submit" value="Receive">
            </form></center>
                      </div>
             <%
                 }
%>
    </body>
</html>
