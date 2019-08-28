<%-- 
    Document   : donateEWaste
    Created on : 4 Apr, 2019, 11:23:42 AM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="pojo.*" %>
<jsp:useBean id="uobj" class="DAO.userDAO" scope="page"/>
<jsp:useBean id="eobj" class="DAO.EWasteDAO" scope="page"/>

<head>
    <title>donation is wealth </title>
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
    text-align:center;
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
    <div class="content-area">
    <div class="doner">
        <div class="title">Donation</div>
        <br>
        <br>
        <br>
        <form action="Controller.jsp" method="get" enctype="multipart/form-data">
            <b>Item E-waste:-</b> <br> <input type="text" name="itemname"><br>
            <b>Item Description:-</b><br><input type="text" name="description" ><br>
            <b>Select Type</b><br><br> <br><select name="type">
                <option value="phone">Phone related items</option>
                <option value="computer">Computer related items</option>
                <option value="electronic">Electronic appliances</option>
                <option value="others">Any other EWaste</option>
            </select>
            <input type="hidden" value="<%=session.getAttribute("userid")%>" name="userid">
            <input type="hidden" value="ewaste" name="page">
            <br>
            <br> <input class="submit" type="submit" value="Donate">
            
        </form>
    </div>
            
            <div class="donee">
                <div class="title">Your Need?</div>
                <form action="ShowEWaste.jsp" method="get">
                     <br>
                     <br>
                     <br><select name="type">
                         <option value="phone">Phone related items</option>
                     <option value="computer">Computer related items</option>
<option value="electronic">Electronic appliances</option>
<option value="others">Any other EWaste</option>
                     </select><br><br>
                     <label><b>Select your area</b></label><br><br>
                    <select name="area">
                       <%
                ArrayList<String> areaList=eobj.getAllLocality();
                for(int i=0;i<areaList.size();i++)
                {
                    System.out.println("inside donate ewaste"+areaList.get(i));
                    %>
                    <option value="<%=areaList.get(i)%>"><%=areaList.get(i)%></option>
                    <%
                }
%> 
                    </select>
                    <br><br>
                    <input class="submit" type="submit" value="Receive">
                </form>
            </div>
            </div>
    </div>
</body>