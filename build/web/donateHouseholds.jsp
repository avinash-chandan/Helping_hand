<%-- 
    Document   : donateHouseholds
    Created on : 4 Apr, 2019, 3:21:08 PM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="pojo.*" %>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<jsp:useBean id="hobj" class="DAO.HouseHoldDAO" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donate HouseHolds</title>
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
            }           .content-area{
    color: #3C4858;
    font-family: sans-serif;
	position: absolute;
	right: 0;
	top: 180px;
	min-width: calc( 100% - 300px );
	padding: 20px; 
	padding-left: 30px;
}
.doner
{
    width:30%;
   height:300px;    
    border:2px solid black;
}
.donee
{
    float:right;
    width:20%;
    padding-right:100px;
   height:200px;    
    border:2px solid black;
}
.title{
    position: relative;
	height:40px;
	padding-top:17px;
	float: left;
        padding-left: 15px;
        padding-right: 15px;
	font-size: 21px;
	color: white;
	border-radius: 4px;
	margin-left:15px;
	text-align: center;
	margin-top: -45px;
    background:  linear-gradient(60deg, #ffa726, #fb8c00);
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
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
        <%
            if (session.getAttribute("userid") != null) {
                session.setAttribute("userid",session.getAttribute("userid"));
        %>
        <div class="content-area">
            <div class="doner">
                <div class="title">Donation</div>
                <br>
                <br>
        <form action="Controller.jsp" method="get" enctype="multipart/form-data">
            <b> Item House-waste:-</b>  <input type="text" name="itemname"><br>
            <br>
            <b>Item Description:-</b><br><input type="text" name="description" ><br><br>
            <b>Select Type</b> <br><select name="type">
                <option value="furniture">Furniture</option>
                <option value="utensils">Any Kitchen items</option>
                <option value="cloaths">Cloaths</option>
                <option value="toys">Toyes</option>
                <option value="others">Any other HouseHolds</option>
            </select>
            <input type="hidden" value="<%=session.getAttribute("userid")%>" name="userid">
            <input type="hidden" value="houseWaste" name="page">
            <br>
            <br>
            <input class="submit" type="submit" value="Donate">

        </form>
        </div>
                <div class="donee">
                    <div class="title">Your need?</div>
                    <br><br>
                <form action="ShowHouse.jsp" method="get">
                    <b> Select Type</b> <br><select name="type">
                <option value="furniture">Furniture</option>
                <option value="utensils">Any Kitchen items</option>
                <option value="cloaths">Cloths</option>
                <option value="toys">Toys</option>
                <option value="others">Any other HouseHolds</option>
                    </select><br>
                    <br>
                    <b> <label>Select your area</label></b><br>
                    <select name="area">
                       <%
                ArrayList<String> areaList=hobj.getAllLocality();
                for(int i=0;i<areaList.size();i++)
                {
                    %>
                    <option value="<%=areaList.get(i)%>"><%=areaList.get(i)%></option>
                    <%
                }
%> 
                    </select>
                    <br>
                    <br>
                    <input class="submit" type="submit" value="submit">
                    <input type="hidden" value="houseRetrive">
                </form>
            </div>
            </div>
        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
