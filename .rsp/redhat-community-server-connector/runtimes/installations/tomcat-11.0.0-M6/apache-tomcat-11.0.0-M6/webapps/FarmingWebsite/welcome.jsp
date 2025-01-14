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
	display: grid;
	box-shadow: 0 2px 2px 2px #888888;
	align-content: center;
	justify-content: space-evenly;
	justify-items: stretch;
}

.homePagebox h1 {
	font-size: 35px;
	padding: 5px;
	font-family: system-ui;
	text-transform: uppercase;
	text-align: center;
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

.wrapper {
	margin: auto;
	width: 95%;
}

.form-menu {
	margin-top: 1rem;
	padding: 4px;
	display: flex;
	height: 65px;
	border: 1px solid black;
	flex-direction: row;
	align-items: center;
	width: 266px;
	margin-right: 15px;
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
	height: 47px;
	margin-top: 10px;
	border: none;
	background: #302121;
	color: white;
	font-size: 31px;
	font-family: sans-serif;
	font-weight: 700;
	margin-left: 16px;
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

			<div class="homePagebox">
				<h1>Check Soil</h1>
				<div class="anthony">
					<div class="form-menu">
						<h3>Select Your Season</h3>
						<form method="post" action="table.jsp">
							<select name="season">
								<option value="">Season</option>
								<option value="Rabi">Rabi</option>
								<option value="Kharif">Kharif</option>
								<option value="Zaid">Zaid</option>

							</select>
					</div>
					<div class="form-menu">
						<h3>Select Your Soil</h3>
						<select name="soil">
							<option value="">Soil</option>
							<option value="BlackSoil">Black Soil</option>
							<option value="AllovialSoil">Allovial Soil</option>
							<option value="RedSoil">RedSoil</option>
							<option value=LateriteSoil>LateriteSoil</option>
							<option value=DessertSoil>DessertSoil</option>
						</select>
					</div>
					<input type="submit" name="btn_choice" value="selected">
					</form>
				</div>


			</div>
	</div>
	</main>
	</div>
</body>
</html>
