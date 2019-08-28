<%-- 
    Document   : register
    Created on : 2 Apr, 2019, 4:53:25 PM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean status=true;
%>
<html>
    <head>
        <script type="text/javascript" src="script.js"></script>
        <title></title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
    <center>
        <div class="central-div" style="top:10%">
            <form action="Controller.jsp" method="get">
                <input type="hidden" name="page" value="register"> 
                <table>
                    <tr>
                        <td colspan="2">
                    <center><h2>Register New User</h2></center>
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Name</label>
                        </td>
                        <td>
                            <input type="text" name="name" id="fname" class="text" placeholder="Name" required>
                            <div id="name_error"></div>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label>User Name</label>
                        </td>
                        <td>
                            <input type="text" name="uname" id="uname" class="text" placeholder="User Name" required>
                            <div id="uname_error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email</label>
                        </td>
                        <td>
                            <input type="email" name="email" id="email" class="text" placeholder="Email" required>
                            <div id="email_error"></div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <label>Password</label>
                        </td>
                        <td>
                            <input type="password" name="pass" id="password" class="text" placeholder="Password" required>
                            <div id="password_error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Contact No</label>
                        </td>
                        <td>
                            <input type="text" name="contactno" id="conractno" class="text" placeholder="Contact No" required>
                            <div id="contactno_error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Locality</label>
                        </td>
                        <td>
                            <input type="text" name="city" id="locality" class="text" placeholder="Locality" required>
                            <div id="locality_error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Address</label>
                        </td>
                        <td>
                            <input type="text" name="address" id="address" class="text" placeholder="Address" required>
                            <div id="address_error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                    <center>
                        <input type="submit" value="Register Now" class="button" required>
                    </center>
                    </td>
                    </tr>
                </table>
                <%
                    if(session.getAttribute("valid")!=null)
                    if(session.getAttribute("valid").equals("false"))
                    {
                     %>
                     <script>alert("Some error has occured while registering \n Please try again");</script>
                     <%
                    }
                    %>
            </form>
        </div>
    </center>
</body>
</html>

