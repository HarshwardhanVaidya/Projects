<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management</title>
<style type="text/css">
body{
width: 100;
    height: 100vh;
    background-image:url("https://cdn.pixabay.com/photo/2013/07/18/14/56/open-163976__480.jpg");
    background-size: cover;
    background-position: center;
    padding: 10px 8%;
    position: relative;
    }
<
style type ="text /css ">form {
	margin-top: 10px;
}
form table {
	margin: auto;
	width: 100%;
}
tr {
	text-align: center;
}
fieldset table {
	margin: auto;
	text-align: left;
}
fieldset {
	margin: 15px 520px;
	text-align: center;
}
legend {
	color: white;
	background-color: #333;
}
</style>
</head>
<body>

	<div align="center">
		<form action="./createAdmin" method="post">
			<fieldset>
				<legend>:::Add Admin:::</legend>
				<table>
					<tr>
						<td>Username</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="text" name="password"></td>
					</tr>
				</table>
			</fieldset>
			<input type="submit" value="Create Account">
		</form>
	</div>

</body>
</html>