<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%=session.getAttribute("login")%></title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login-register.css">

<style>
body {
	font-family: Sans-serif;
	height: 100%
}

a {
	text-decoration: none;
	font-family: sans-serif;
}

.homePagebox {
	background-color: white;
	height: 30rem;
	box-shadow: 0 2px 2px 2px #888888;
}

.anthony {
	text-align: center;
	display: flex;
	padding: 10px;
	font-family: sans-serif;
	flex-direction: row;
	align-items: center;
	justify-content: center;
}

.anthony h1 {
	font-size: 56px;
	color: firebrick;
	text-transform: uppercase;
	letter-spacing: 8px;
	width: 100%;
	background: azure;
}

.homePagebox p {
	width: 331px;
	margin: auto;
	font-family: emoji;
	font-size: 46px;
	color: cadetblue;
	text-align: center;
}

.wrapper {
	margin: auto;
	width: 95%;
}

.form-menu {
	margin-top: 2rem;
	padding: 5px;
	display: flex;
	height: 82px;
	border: 1px solid black;
	flex-direction: row;
	align-items: center;
	width: 262px;
}

.menu {
	width: 185px;
	padding: 6px;
	margin: auto;
}

select {
	width: 91px;
	height: 29px;
	background: #e71e1e;
	color: white;
	font-size: 14px;
	font-family: sans-serif;
	font-weight: 500;
	margin-left: 6px;
}

input[type="submit"] {
	width: 150px;
	height: 55px;
	margin-top: 28px;
	border: none;
	background: #302121;
	color: white;
	font-size: 31px;
	font-family: sans-serif;
	font-weight: 700;
	margin-left: 26px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background: transparent;
	color: black;
	border: 1px solid;
}

nav {
	box-sizing: border-box;
	text-align: center;
	width: 100%;
	padding: 25px 40px;
	background-color: #696078;
	overflow: hidden;
}

nav h1 {
	float: left;
	font: normal 24px/1.5 'Open Sans', sans-serif;
	color: #fff;
}

nav a {
	color: #fff;
	float: right;
	text-decoration: none;
	display: inline-block;
	padding: 13px 50px;
	border-radius: 3px;
	margin-left: 11px;
	font: bold 14px/1 'Open Sans', sans-serif;
	text-transform: uppercase;
	background-color: #9e53a1;
}

nav a:hover {
	color: black;
}

th {
	background: #4f5a57;
	color: white;
	font-size: 19px;
	padding: 5px;
}

td {
	background: #afbbb8;
	color: black;
	font-size: 19px;
	font-family: inherit;
	text-align: center;
}
</style>


</head>
<body>

	<%
		if (session.getAttribute("login") == null || session.getAttribute("login") == " ") //check condition unauthorize user not direct access welcome.jsp page
	{
		response.sendRedirect("login.jsp");
	}
	%>

	<nav>
		<h1>
			Welcome:<%=session.getAttribute("login")%></h1>
		<h2>
			<a href="logout.jsp">Logout</a> <a href="index.jsp">Home</a>
		</h2>
	</nav>

	<div class="wrapper">
		<main>
			<br>
			<br>
			<p>
				<a href="welcome.jsp">Welcome</a>/ <a href="table.jsp">Table</a>/Form
			</p>
			<div class="homePagebox">
				<div class="anthony">
					<h1>Thank you !</h1>


				</div>
				<p>We Will Connect You Soon !</p>


				<h3
					style="text-align: center; background: #c6f7f7; width: 129px; margin: auto; border: 1px solid black;
	/* color: #ff0a0a; */ font-size: 22px;">
					<a href="welcome.jsp">Back To Home</a>
				</h3>
			</div>
		</main>
	</div>
</body>
</html>
