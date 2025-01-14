<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>

<%
	try {
	Class.forName("com.mysql.cj.jdbc.Driver"); //load driver

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmerBuddy", "root", "root"); //create connection

	if (request.getParameter("btn_cropregister") != null) //check register button click event not null
	{
		String txt_name, txt_phnumber, txt_season, txt_soil, txt_nitrogen, txt_phosphrous, txt_Fer_hectare, txt_ct_fert,
		txt_fer_year;

		txt_name = request.getParameter("txt_name");
		txt_phnumber = request.getParameter("txt_phnumber");
		txt_season = request.getParameter("txt_season");
		txt_soil = request.getParameter("txt_soil");
		txt_nitrogen = request.getParameter("txt_nitrogen");
		txt_phosphrous = request.getParameter("txt_phosphrous");
		txt_Fer_hectare = request.getParameter("txt_Fer_hectare");
		txt_ct_fert = request.getParameter("txt_ct_fert");
		txt_fer_year = request.getParameter("txt_fer_year");

		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement(
		"insert into cropregister(txt_name,txt_phnumber,txt_season,txt_soil,txt_nitrogen,txt_phosphrous,txt_Fer_hectare,txt_ct_fert,txt_fer_year) values(?,?,?,?,?,?,?,?,?)"); //sql insert query
		pstmt.setString(1, txt_name);
		pstmt.setString(2, txt_phnumber);
		pstmt.setString(3, txt_season);
		pstmt.setString(4, txt_soil);
		pstmt.setString(5, txt_nitrogen);
		pstmt.setString(6, txt_phosphrous);
		pstmt.setString(7, txt_Fer_hectare);
		pstmt.setString(8, txt_ct_fert);
		pstmt.setString(9, txt_fer_year);
		pstmt.executeUpdate();
		//		request.setAttribute("successMsg","Register Successfully...! Please login");

		response.sendRedirect("thankYou.jsp");

		con.close();
	}
} catch (Exception e) {
	out.println(e);
}
%>



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
	background-color: #f1e0e0;
	height: fit-content;
	box-shadow: 0 2px 2px 2px #888888;
}

.homePagebox h1 {
	text-align: center;
	margin: 5px;
	text-align: center;
	padding: 6px;
	color: #333699;
	font-size: 25px;
	letter-spacing: 5px;
	text-transform: uppercase;
	font-weight: 800;
}

.anthony {
	text-align: center;
	display: flex;
	padding: 10px;
	font-family: sans-serif;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	margin-top: 5rem;
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
				<h1>Enter Your Details</h1>
				<div class="anthony">

					<div class="main-content">

						<form class="form-register" method="post">

							<div class="form-register-with-email">

								<div class="form-white-background">

									<div class="form-title-row">
										<h1>Register</h1>
									</div>


									<div class="form-row">
										<label> <span>Name</span> <input type="text"
											name="txt_name" placeholder="Enter Name">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Number</span> <input type="text"
											name="txt_phnumber" id="season" placeholder="Enter number">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Season</span> <input type="text"
											name="txt_season" id="season" placeholder="Enter Season">
										</label>
									</div>
									<div class="form-row">
										<label> <span>Soil Type</span> <input type="text"
											name="txt_soil" id="soil" placeholder="Enter soil">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Nitrogen</span> <input type="text"
											name="txt_nitrogen" id="nitrogen"
											placeholder="Enter Nitrogen">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Phosphrous</span> <input type="text"
											name="txt_phosphrous" id="phosphrous"
											placeholder="Enter Phosphrous ">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Use Fertilizer For Hectare</span> <input
											type="text" name="txt_Fer_hectare"
											placeholder="Enter Use Fertilizer For Hectare">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Cost Of Fertilizer</span> <input
											type="text" name="txt_ct_fert"
											placeholder="Enter Cost Of Fertilizer">
										</label>
									</div>

									<div class="form-row">
										<label> <span>Fertilizer For Year</span> <input
											type="text" name="txt_fer_year"
											placeholder="Enter Use Fertilizer For Year">
										</label>
									</div>


									<input type="submit" name="btn_cropregister" value="Submit">

								</div>

								<a href="table.jsp" class="form-log-in-with-existing">Don`t
									Want to tell,<b> Click to Back </b>
								</a>

							</div>

						</form>

					</div>


				</div>

			</div>
		</main>
	</div>
</body>
</html>
