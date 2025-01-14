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
	height: 45rem;
}

a {
	text-decoration: none;
	font-family: sans-serif;
}

.homePagebox {
	background-color: white;
	height: 33rem;
	width: 49rem;
	margin: auto;
}

.anthony {
	margin: auto;
	width: 347px;
}

.wrapper {
	margin: auto;
	width: 95%;
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

table {
	border: 1px solid #000;
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	padding: 7px;
}

table>thead>tr>th, table>thead>tr>td, table>tbody>tr>th, table>tbody>tr>td,
	table>tfoot>tr>th, table>tfoot>tr>td {
	border: 1px solid #ddd;
	line-height: 20px;
	padding: 13px;
	vertical-align: top;
}

table>thead>tr>th {
	background: #444;
	color: #fff;
	font-weight: normal;
	vertical-align: bottom;
}

table th {
	text-align: left;
}

table, table th, table td, table tr, table tr th, table tr td, table thead,
	table thead th, table thead td, table thead tr, table thead tr th,
	table thead tr td, table tbody, table tbody th, table tbody td, table tbody tr,
	table tbody tr th, table tbody tr td, table tfoot, table tfoot th,
	table tfoot td, table tfoot tr, table tfoot tr th, table tfoot tr td {
	display: block;
}

table>thead {
	float: left;
}

table>tbody>tr {
	display: inline-block;
	vertical-align: top;
	margin-left: 21px;
	width: 120px;
	text-align: center;
}

table>tbody {
	width: auto;
	white-space: nowrap;
	overflow-x: auto;
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
			<br> <br>
			<p>
				<a href="welcome.jsp">Welcome</a>/Table
			</p>
			<div class="homePagebox">
				<h1
					style="text-align: center margin: 5px; text-align: center; padding: 6px; color: #333699; font-size: 31px; letter-spacing: 5px; text-transform: uppercase; font-weight: 800;">
					Soil Information</h1>
				<div class="anthony">






					<table>
						<thead>
							<tr>
								<th>S.No</th>
								<th>Season</th>
								<th>Soil Name</th>
								<th>Nitrogen(N)</th>
								<th>Phosphorus(P2O5)</th>
								<th>Use Fertilizer For Hectare</th>
								<th>Cost Of Fertilizer</th>
								<th>Use Fertilizer For Year</th>
							</tr>
						</thead>
						<tbody>


							<%
								try {

								String cp, sp;
								sp = request.getParameter("season");

								cp = request.getParameter("soil");

								Class.forName("com.mysql.cj.jdbc.Driver"); //load driver
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmerBuddy", "root", "root"); //create connection
								Statement statement = con.createStatement();
								String query = "Select * from crop where Season= ? AND SoilName=? ";
								PreparedStatement myStmt = con.prepareStatement(query);
								myStmt.setString(1, sp);
								myStmt.setString(2, cp);
								ResultSet rSet = myStmt.executeQuery();

								while (rSet.next()) {
									out.println("<tr>");
									out.println("<td>" + rSet.getString(1) + "</td>");
									out.println("<td>" + rSet.getString(2) + "</td>");
									out.println("<td>" + rSet.getString(3) + "</td>");
									out.println("<td>" + rSet.getString(4) + "</td>");
									out.println("<td>" + rSet.getString(5) + "</td>");
									out.println("<td>" + rSet.getString(6) + "</td>");
									out.println("<td>" + rSet.getString(7) + "</td>");
									out.println("<td>" + rSet.getString(8) + "</td>");

									out.println("</tr>");

								}
							} catch (Exception e) {
								out.println(e);
							}
							%>


						</tbody>
					</table>
				</div>

				<p style="text-align: center; color: #c34646; margin-top: 20px;">
					Unsatisfied with Given Data <a
						style="color: blue; cursor: pointer;" href="cropform.jsp">Click
						Here</a>
				</p>

			</div>
		</main>
	</div>
</body>
</html>
