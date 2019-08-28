<%-- 
    Document   : ForgetPassword
    Created on : 31 Mar, 2019, 2:48:35 PM
    Author     : AVINASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body style="background-image: url(12.jpg); background-repeat:no-repeat;background-size:100%;">
        <center>
		<div class="central-div">
			<form method='post' action="controller.jsp">
                             <input type="hidden" name="page" value="update"> 
				<table>
					<tr>
						<td colspan="2">
							<center><h2>FORGET PASSWORD</h2></center>
						</td>
					</tr>
					<tr>
						<td>
							<label>User name</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="User Name" name="username">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Email Id</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder="email id" name="email">
						</td>
					</tr>
					<tr>
						<td>
							<label>new Password</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="New Password" name="newpassword">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>confirm new Password</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder="Confirm Password" name="confirmpassword">
						</td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							<input type="submit" value="Update" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</center>
    </body>

</html>
