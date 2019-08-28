<%-- 
    Document   : feedback
    Created on : 5 Apr, 2019, 4:16:15 AM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FeedBack</title>
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
            .feedback
            {
                padding-top:10%;
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
           <img src="Screenshot_2018-12-25-00-31-22-882_com.tencent.ig.png" width="60" height="60"><h2 style="float:left">username &nbsp;</h2>
            <div class="option">
            <a href="profile.jsp">Profile</a>
            <a href="donatedItem.jsp">My Donation</a>
            <a href="feedback.jsp">Feedback</a>
            <a href="logout.jsp">Log Out</a>
            
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
        <div class="feedback">
            <center>
                <h1>Give your feedback here....</h1>
                <bR>
                <br>
                <form action="homePage.jsp" method="post">
                    <textarea rows="10" cols="50"></textarea>
                <br>
                <br>
                <br>
                <input class="submit" type="submit" value="submit">
                </form>
            </center>
        </div>
    </body>
</html>
