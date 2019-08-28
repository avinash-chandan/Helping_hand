<%-- 
    Document   : login
    Created on : 24 Mar, 2019, 8:12:34 PM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examination Login</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body style="background-image: url(12.jpg); background-repeat:no-repeat;background-size:100%;">
        <center>
		<div class="central-div">
			<form method='post' action="Controller.jsp">
                             <input type="hidden" name="page" value="login"> 
				<table>
					<tr>
						<td colspan="2">
							<center><h2>Login Form</h2></center>
						</td>
					</tr>
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="Password" name="password">
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
                                                    <% 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    %>
                                                    <script>alert("username or password is incorrect");</script>
                                                    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">username or password is incorrect</p>
                                                    <br>
                                                    <%
                                                      }
                                                        }
                                                        if(session.getAttribute("valid")!=null)
                                                        if(session.getAttribute("valid").equals("true"))
{
%>
                                                    <script>alert("Registered sucessfull!");</script>
                                                    <%
}
                                                          %>
                                                    
                                                    
                                                    <a href="ForgetPassword.jsp">Forgot Password</a></td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							<input type="submit" value="Login" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</center>
    </body>
</html>
