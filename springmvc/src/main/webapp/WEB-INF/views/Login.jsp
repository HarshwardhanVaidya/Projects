<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<title>Employee Management</title>
<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100)
	;

body {
	width: 100;
	height: 100vh;
	background-image:
		url("https://cdn.pixabay.com/photo/2013/07/18/14/56/open-163976__480.jpg");
	background-size: cover;
	background-position: center;
	padding: 10px 8%;
	position: relative;
}

#btn {
	align-content: center;
	cursor: pointer;
	font-weight: 600;
	border-radius: 8px;
	padding: 12px 83px;
	border: 0;
	font-family:sans-serif;
	color: #fff;
	background: #ff5000;
	line-height: 1.15;
	font-size: 16px;
		margin-top: 15px;
}

#btn2 {
	cursor: pointer;
	font-weight: 600;
	font-family:sans-serif;
	border-radius: 8px;
	padding: 12px 48px;
	border: 0;
	color: #fff;
	background: #3281e9;
	line-height: 1.15;
	font-size: 16px;
	
}

.input {
font-weight: 600;
	font-family:sans-serif;
	height: 36px;
	width: 200px;
	border: 2px solid #ff5000;
	border-radius: 8px;
	background: transparent;
	color: #red;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 10px;
}
#msg {
font-weight: 400;
	font-family:sans-serif;
	padding: 10px;

	color:#27ae61;
	margin-top:50px; 
	border-radius: 6px;
}
</style>
</head>
<body>

	<div align="center">

		<form action="./login" method="post" id="form">
			<table>
				<tr>

					<td><input type="text" name="username"
						placeholder="Enter username" class="input"></td>
				</tr>
				<tr>

					<td><input type="text" name="password"
						placeholder="Enter password" class="input"></td>
				</tr>


			</table>
<div>
				<input type="submit" value="Login" id="btn">
			</div>
		</form>
		<div>
			
			<br/>
			<div>
				<a href="./createAdmin" id="btn2">Create Account</a>
			</div>
		</div>
		<%
		if (msg != null) {
		%>
		<h4 id="msg"><%=msg%>
		</h4>
		<%
		}
		%>
	</div>

</body>
</html>