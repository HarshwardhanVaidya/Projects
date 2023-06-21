<%@page import="com.jspiders.springmvc.pojo.EmployeePOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
List<EmployeePOJO> employees = (List<EmployeePOJO>) request.getAttribute("empList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management</title>
<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100)
	;

/*** Table Styles **/
#btn {
	margin-top: 20px;
	margin-bottom: 20px;
	display: inline-block;
	outline: none;
	cursor: pointer;
	font-weight: 600;
	border-top-right-radius: 8px; 
	border-bottom-right-radius : 8px;
	padding: 12px 24px;
	border: 0;
	color: #fff;
	background: #ff5000;
	line-height: 1.15;
	font-size: 16px;
}

th {
	color: #D5DDE5;;
	background: #1b1e24;
	border-bottom: 4px solid #9ea7af;
	border-right: 1px solid #343a45;
	font-size: 23px;
	font-weight: 100;
	padding: 24px;
	text-align: left;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	vertical-align: middle;
}

th:first-child {
	border-top-left-radius: 3px;
}

th:last-child {
	border-top-right-radius: 3px;
	border-right: none;
}

tr {
	border-top: 1px solid #C1C3D1;
	border-bottom-: 1px solid #C1C3D1;
	color: #666B85;
	font-size: 16px;
	font-weight: normal;
	text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}

tr:hover td {
	background: #4E5066;
	color: #FFFFFF;
	border-top: 1px solid #22262e;
}

tr:first-child {
	border-top: none;
}

tr:last-child {
	border-bottom: none;
}

tr:nth-child(odd) td {
	background: #EBEBEB;
}

tr:nth-child(odd):hover td {
	background: #4E5066;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 3px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 3px;
}

td {
	background: #FFFFFF;
	padding: 20px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 18px;
	text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
	border-right: 1px solid #C1C3D1;
}

td:last-child {
	border-right: 0px;
}

th.text-left {
	text-align: left;
}

th.text-center {
	text-align: center;
}

th.text-right {
	text-align: right;
}

td.text-left {
	text-align: left;
}

td.text-center {
	text-align: center;
}

td.text-right {
	text-align: right;
}

.form {
	background: rgba(0, 0, 0, 0.182);
	border: 1px solid rgb(76, 76, 76);
	border-radius: 4px;
	display: flex;
	align-items: center;
	margin-top: 30px;
	overflow: hidden;
	display: flex;
	align-items: center;
}

#input {
	height: 36px;
	width: 200px;
	border: 2px solid #ff5000;
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
	margin-left: 20px;
	background: transparent;
	color: #red;
	text-align: center;
}

#msg {
	padding:12px 25px;
	background-color:#27ae61;
	color:#fff;
	font-weight:lighter;
	margin-bottom:25px; 
}
</style>
</head>
<body>

	<div align="center">
		<form id="form" action="./remove" method="post">


			<input type="text" name="id" id="input"
				placeholder="Enter Employee ID"> <input type="submit"
				value="Remove" id="btn">
		</form>
		<%
		if (msg != null) {
		%>
		<h4 id="msg"><%=msg%>
		</h4>
		<%
		}
		%>
		<%
		if (employees != null) {
		%>
		<table id="data">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Email</td>
					<td>Contact</td>
					<td>Designation</td>
					<td>Salary</td>
				</tr>
			</thead>
			<%
			for (EmployeePOJO pojo : employees) {
			%>
			<tr>
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td><%=pojo.getEmail()%></td>
				<td><%=pojo.getContact()%></td>
				<td><%=pojo.getDesignation()%></td>
				<td><%=pojo.getSalary()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>

	</div>

</body>
</html>