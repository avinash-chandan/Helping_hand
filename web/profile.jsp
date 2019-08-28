<%-- 
    Document   : profile
    Created on : 5 Apr, 2019, 1:01:26 PM
    Author     : AVINASH
--%>
<%@page import="pojo.*" %>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <style>
            .profile{
    font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    margin-top: 70px;
}
.profile .tag{
    font-size: 17px;
    padding:10px;
    text-align: left;
    background: cadetblue;
    color: white;
    display: inline-block;border-bottom: 1px solid cadetblue;
    
    min-width: 120px !important;
    
}
.profile .val{
    text-align: left;
    min-width: 370px !important;
    font-size: 17px;
    font-weight: normal;
    padding:10px;
    display: inline-block;
    background: white ;
    border-bottom: 1px solid cadetblue;
}
.profile .val:hover{
    background: #CCCCCC; 
}
.profile h2{
    margin-bottom:1px;
    box-shadow: 1px 1px 3px #082F38;
    max-width: 530px;
}
.title{
    top:40px;
    text-align:center;
    position: relative;
	height:40px;
	padding-top:17px;
	float: left;
        padding-left: 30px;
        padding-right: 30px;
	font-size: 21px;
	color: white;
	border-radius: 4px;
	margin-left:15px;
	text-align: center;
	margin-top: -45px;
    background:  linear-gradient(60deg, #ffa726, #fb8c00);
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
}
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
            } .content-area{
    color: #3C4858;
    font-family: sans-serif;
	position: absolute;
	right: 0;
	top: 180px;
	min-width: calc( 100% - 300px );
	padding: 20px; 
	padding-left: 30px;
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
            User user=uobj.getDetails(Integer.parseInt(session.getAttribute("userid").toString()));
                        %>
                        <div class="title">Profile</div>
           <div class="profile ">
               <h2><span class="tag">Your Name </span><span class="val"><%=user.getName()%></span><br/>
                   <span class="tag">Email </span><span class="val"><%=user.getEmail() %></span><br/>
               <span class="tag">User Name </span><span class="val"><%=user.getUsername() %></span><br/>
               <span class="tag">Address </span><span class="val"><%=user.getAddress() %></span>
               <span class="tag">Locality </span><span class="val"><%=user.getLocality() %></span>
               <span class="tag">My Donation</span><span class="val"><%=user.getDonatepoint() %></span>
               <span class="tag">Receive Point </span><span class="val"><%=user.getReceivepoint()%></span></h2> 
           </div>
                    </div>
    </body>
</html>
