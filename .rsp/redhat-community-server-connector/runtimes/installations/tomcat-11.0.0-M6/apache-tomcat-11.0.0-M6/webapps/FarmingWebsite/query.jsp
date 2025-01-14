<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><%=session.getAttribute("login")%></title>
<link rel="stylesheet" href="css/main.css">
<script src="https://kit.fontawesome.com/e391ce7786.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/login-register.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	height: 100Vh;
	text-align: center;
	/* display: flex;
    align-items: center;
    justify-content: center; */
}

.question {
	display: flex;
	align-items: center;
	justify-content: center;
}

.container {
	width: 100%;
	max-width: 830px;
	height: fit-content;
	padding: 10px;
}

.element {
	padding: 10px;
	background: crimson;
	color: white;
	margin: 10px 0;
	border-radius: 5px;
}

.element .question {
	display: flex;
	justify-content: space-between;
	padding: 10px;
}

.question h3 {
	font-family: sans-serif;
	font-weight: bold;
	text-transform: capitalize;
	font-size: 17px;
	text-align: center;
}

.question button {
	border: none;
	outline: none;
	background: none;
	cursor: pointer;
}

.question i {
	color: white;
	font-size: 20px;
}

.element .answer {
	padding: 10px 20px;
	animation: animate .7s;
}

p {
	font-family: sans-serif;
}

.hideText {
	display: none;
}

@
keyframes animate {from { opacity:0;
	transform: scale(0.6);
}

to {
	opacity: 1;
	transform: scale(1);
}

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
	<h1>Queries Farmer Asked</h1>
	<div class="question">
		<div class="container">
			<div class="element">
				<div class="question">
					<h3>q1) which fertilizer would be useful for black soil?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Agro-friendly contents make them fertile. These black soils
						are highly moisture-retentive, thus responding well to irrigation.
						These soils are enriched with calcium carbonate, magnesium,
						potash, and lime which are all nutrients.</p>
				</div>
			</div>

			<div class="element">
				<div class="question">
					<h3>q2) which fertilizer is used for abundant yield of tomato
						crops?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Choose a fertilizer that has a balanced ratio of the three
						major elements, such as 10-10-10, or where the middle number
						(phosphorus) is larger than the first number (nitrogen), such as
						2-3-1. Tomatoes are heavy feeders and usually do need fertilizer
						unless your soil is very rich.</p>
				</div>
			</div>

			<div class="element">
				<div class="question">
					<h3>q3) what are the climatic conditions for better growth of
						rubber?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Rubber is a tropical tree. It requires high temperature
						throughout the year – ranging between 20°-35°C or average
						monthly mean of 27°C. Less than 20°C temperature is detrimental.
						Similarly, rubber also requires heavy rainfall.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q4) In which are, the crop jowar is more available?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Jowar is mainly concentrated in the peninsular and central
						India. Maharashtra, Karnataka, Andhra Pradesh, Madhya Pradesh,
						Gujarat, Rajasthan, Uttar Pradesh (the Bundelkhand region) and
						Tamil Nadu are the major jowar – growing states. Other states
						grow sorghum in small areas primarily for fodder.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q5) which crops grown more in black soil?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>These soils are best suited for cotton crop. Hence these
						soils are called as regur and black cotton soils. Other major
						crops grown on the black soils include wheat, jowar, linseed,
						virginia tobacco, castor, sunflower and millets.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q6) In which soil the crop potato gives more yield?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Potatoes grow best in well-drained, sandy soil. A poorly
						drained soil is more likely to produce diseased tubers. Have your
						soil tested. The ideal soil pH level for potatoes is somewhat
						acidic, between 6 and 6.5, but they will tolerate soil with pH as
						low as 5.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q7) During summer which crop gives more yield?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Sweet Potatoes,Southern Peas, Yard Long Beans,Hot
						Peppers,Green Beans,Okra,Zucchini Squash,Sunflowers</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q8) During winter which crop gives better yield?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>The Spring and Rabi maize are gaining popularity among
						farmers and multinationals because of higher yield potential and
						assured irrigation facilities.
						Kale,Carrots,Onions,GarlicCabbage,Spinach,Arugula,Mache.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q9) what is use of nitrogen?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Nitrogen (N) plays an important role in crop plants. It is
						involved in various critical processes, such as growth, leaf
						area-expansion and biomass-yield production. Excess NUE can
						support good plant performance and better crop out-put.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q10) which crops gives better yield in red soil?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>The red soils, with the proper use of fertilizers and
						irrigation techniques, give good yield of cotton, wheat, rice,
						pulses, millets, tobacco, oil seeds, potatoes and fruits.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q11) which crops grow more in alluvial soil?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>They yield splendid crops of rice, wheat, sugarcane,
						tobacco, cotton, jute, maize, oilseeds, vegetables and fruits.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q12) what are the medicinal and aromatic plants?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Medicinal & Aromatic Plants (MAPs) are botanical raw
						materials, also known as herbal drugs, that are primarily used for
						therapeutic, aromatic and/or culinary purposes as components of
						cosmetics, medicinal products, health foods and other natural
						health products.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q13) what are the various crops and herbs grown in sandy
						soil?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Vegetable plants that thrive in sandy soil are Carrots,
						Radishes, Potatoes, Lettuce, Collard greens, Tomatoes, Zucchini,
						Corn, Asparagus, Watermelon, Beans, and Cucumber. Herbs that
						thrive in sandy soil are Thyme, Rosemary, and Oregano.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q14) which comodity gives more profit?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Lavender Farming,Gourmet Mushrooms Farming,Willows
						Farming,Garlic Farming,Bamboo Farming are the new profitable ways.</p>
				</div>
			</div>
			<div class="element">
				<div class="question">
					<h3>q15) what are the horticultural crop based fruits?</h3>
					<button>
						<i class="fas fa-plus-circle"></i>
					</button>
				</div>
				<div class="answer hideText">
					<p>Manual harvesting is done by hand or by using harvest
						clippers. Some fruits such as apples, pears, peaches, apricots,
						and quinces are harvested by hand because an abscission layer is
						formed in these crops</p>
				</div>
			</div>
		</div>

	</div>


	<p style="color: #000000;">
		Check Your Soil <a style="color: rgb(42, 42, 197); cursor: pointer;"
			href="welcome.jsp">Click Here</a>
	</p>
	<script>
        
const elements = document.querySelectorAll('.element');

elements.forEach(element =>{
    let btn = element.querySelector('.question button');
    let icon = element.querySelector('.question button i');
    var answer = element.lastElementChild;
    var answers = document.querySelectorAll('.element .answer');
    btn.addEventListener('click', ()=>{
        answers.forEach(ans =>{
            let ansIcon = ans.parentElement.querySelector('button i');
            if(answer !== ans){
                ans.classList.add('hideText');
                ansIcon.className = 'fas fa-plus-circle';
            }
        });
        answer.classList.toggle('hideText');
        icon.className === 'fas fa-plus-circle' ? icon.className = 'fas fa-minus-circle' 
        : icon.className ='fas fa-plus-circle';
    });
});
    </script>



</body>
</html>
