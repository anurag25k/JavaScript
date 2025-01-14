<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>Farmer`s Buddy</title>
<link rel="icon" type="image/png" href="fmm.jpg">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/style.css">
</head>


<body>
	<div class="container">
		<header>
			<nav class="header__nav w-120">
				<div class="header__logo">
					<h1>Farmer`s Buddy</h1>
				</div>
				<div class="header__nav__content">
					<div class="nav-close-icon"></div>
					<ul class="header__menu">
						<li class="menu__item"><a href="index.jsp">Home</a></li>
						<li class="menu__item"><a href="#" class="menu__link">Crops</a>
						</li>
						<li class="menu__item"><a href="#opp" class="menu__link">New
								Opportunities </a></li>
						<!-- <li class="menu__item">
                            <a href="#" class="menu__link"></a>
                        </li> -->
						<li class="menu__item"><a href="#contacts" class="menu__link">Contact</a>
						</li>
					</ul>
					<div class="header__signup">
						<a href="register.jsp" class="btn btn__signup"> <i
							class="fas fa-user-plus"></i> Sign Up
						</a>
					</div>
				</div>

				<div class="hamburger-menu-wrap">
					<div class="hamburger-menu">
						<div class="line"></div>
						<div class="line"></div>
						<div class="line"></div>
					</div>
				</div>
			</nav>
		</header>

		<section class="hero w-120">
			<div class="hero__content">
				<div class="hero__text">
					<h1 class="hero__title">A New Way to Farming</h1>
					<p class="hero__description">Farmer`s Buddy provides farmes,
						ranchers, private foresters, and agricultural producers with
						online self service applications and educational materials.</p>
					<a href="login.jsp" class="btn btn__hero">Login Now</a>
				</div>
				<div class="hero__img">
					<img
						src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/hero.png"
						alt="">
				</div>
			</div>
		</section>

		<section id="opp" class="opportunities">
			<div class="opportunities__img">
				<img
					src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/leaf.png"
					alt="">
			</div>
			<div class="opportunities__content w-105">
				<div class="opportunities__head">
					<h2 class="opportunities__title">Opportunities</h2>
					<p class="opportunities__description">We are the first and the
						only one platform enabling you to help our farmers.</p>
				</div>
				<div class="opportunities__body">
					<div class="opportunity">
						<img
							src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/opportunites/opportunity-1.svg"
							alt="Icon" class="opportunity__icon">
						<h4 class="opportunity__title">Connect to more farmers</h4>
						<p class="opportunity__description">ipsum Lorem ipsum dolor
							sit amet consectetur adipisicing elit. Ab, et? Reprehenderit, sed
							impedit! Iure veritatis dolore at praesentium libero, eum
							dolorem, recusandae doloribus culpa ex, numquam accusamus earum
							aut magni?</p>
					</div>

					<div class="opportunity active">
						<img
							src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/opportunites/opportunity-2.svg"
							alt="Icon" class="opportunity__icon">
						<h4 class="opportunity__title">Grow your Farming Level</h4>
						<p class="opportunity__description">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Praesentium iure corrupti porro.
							Dolore molestias nulla quam voluptate! Maxime itaque quae,
							dolorem molestiae consectetur eum voluptas laborum nemo quaerat?
							Corporis, voluptatem?</p>
					</div>
					<div class="opportunity">
						<img
							src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/opportunites/opportunity-3.svg"
							alt="Icon" class="opportunity__icon">
						<h4 class="opportunity__title">Best Pesticide</h4>
						<p class="opportunity__description">At vero eos et accusamus
							et iusto odio praesentium atque corrupti quos dolores et quas
							molestias excepturi sint occaecati cupiditate non provident,
							similique sunt in culpa qui officia deserunt mollitia</p>
					</div>
				</div>
			</div>
		</section>

		<section class="invest  w-105">
			<div class="invest__content">
				<div class="invest__head">
					<h2 class="invest__title">Save Money And Time</h2>
					<p class="invest__description">We help you For Selecting best
						and perfect Pesticide for your Soil And Help you to get more
						outcomes</p>
				</div>
				<div class="invest__body">
					<div class="invest__item">
						<div class="invest__item__head">
							<h5 class="invest__item__subtitle">NEW FARM TODAY</h5>
						</div>
						<div class="invest__item__body">
							<h4 class="invest__item__title">Short terms Goal</h4>
							<p class="invest__item_description">Best Soil in farms that
								will be ready for harvest in 3-18 months</p>
						</div>
						<div class="invest__item__footer">
							<a href="login.jsp" class="btn btn__invest">Check Soil
								Quailty</a>
						</div>
					</div>
					<div class="invest__item">
						<div class="invest__item__head">
							<h5 class="invest__item__subtitle">NEW FARM TODAY</h5>
						</div>
						<div class="invest__item__body">
							<h4 class="invest__item__title">Long terms Goal</h4>
							<p class="invest__item_description">Consider farms that have
								long term investment program.</p>
						</div>
						<div class="invest__item__footer">
							<a href="#" class="btn btn__invest">Learn More</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="how-is-works w-120">
			<div class="works__content">
				<div class="works__head">
					<h2 class="works__title">How it works</h2>
					<p class="works__description">pick Soil from the supply chain
						and participate in Soil projects that are backed up not only , but
						also by the best land, family heritage, innovation and overall
						superior expertise.</p>
				</div>
				<div class="works__body">
					<ul class="form_progressbar">
						<li class="progressbar__step active" data-step="1">01</li>
						<li class="progressbar__step" data-step="2">02</li>
						<li class="progressbar__step" data-step="3">03</li>
						<li class="progressbar__step" data-step="4">04</li>
					</ul>
				</div>
				<div class="works__footer">
					<div class="works__step__content first_step">
						<h3 class="works__step_title">Select your Soil and complete
							reservation form.</h3>
						<p class="works__step_description">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Atque, dolores. Perspiciatis ea
							iste fuga voluptatum hic maiores dolores alias blanditiis, rerum
							harum quasi deleniti quos ipsum aliquid adipisci suscipit qui.</p>
					</div>
					<div class="works__step__content">
						<h3 class="works__step_title">Swallowed a planet!.</h3>
						<p class="works__step_description">Lorem, ipsum dolor sit amet
							consectetur adipisicing elit. Assumenda mollitia, voluptates
							obcaecati molestias quod velit!</p>
					</div>
					<div class="works__step__content">
						<h3 class="works__step_title">It's art! A statement</h3>
						<p class="works__step_description">Father Christmas. Santa
							Claus. Or as I've always known him: Jeff. Sorry, checking all the
							water in this area; there's an escaped fish. I hate yogurt. It's
							just stuff with bits in. Annihilate</p>
					</div>
					<div class="works__step__content">
						<h3 class="works__step_title">Register</h3>
						<p class="works__step_description">It's art! A statement on
							modern society, 'Oh Ain't Modern Society Awful?'! I am the
							Doctor, and you are the Daleks! Stop talking, brain thinking.
							Hush. You've swallowed a planet! Sorry, checking all the water in
							this area; there's an escaped fish.</p>
					</div>
				</div>
			</div>
		</section>


		<section class="farm-invest w-105">
			<h2 class="farm-invest__title">
				The future of <span>Farming </span> is Top With Soil Farm
			</h2>
			<a href="login.jsp" class="btn btn__farm--invest">Check Soil Now</a>

		</section>

		<footer class="footer">
			<div class="footer__body w-105">
				<nav class="footer__nav">
					<ul class="footer_nav__menu">
						<li class="footer_nav__item">
							<h4 class="footer_nav__menu__title">COMPANY</h4>
						</li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">About Us</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Team</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Careers</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Contact</a></li>
					</ul>
					<ul class="footer_nav__menu">
						<li class="footer_nav__item">
							<h4 class="footer_nav__menu__title">Soil Testing</h4>
						</li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Features</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">How it works</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Pricing</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Login</a></li>
					</ul>
					<ul class="footer_nav__menu">
						<li class="footer_nav__item">
							<h4 class="footer_nav__menu__title">LEGAL</h4>
						</li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Privacy</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Terms</a></li>
						<li class="footer_nav__item"><a href="#"
							class="footer_nav__link">Security</a></li>
					</ul>
				</nav>
				<div class="footer__contact">
					<h5 class="footer__contact__title">Contact Us</h5>
					<span>Write email to us</span> <a href="#" class="email">Farm
						Buddy@gmail.com</a> <a href="register.jsp" class="btn btn__signin">
						<i class="far fa-user"></i> Sign In
					</a>
				</div>
			</div>
			<div class="footer__bottom">
				<div class="footer__bottom__content w-105">
					<div class="footer__logo">
						<img src="fmm.jpg" alt="Logo">
					</div>
					<p class="footer_copyright">Farm Buddy © Copyright 2022.</p>
				</div>
				<img
					src="https://raw.githubusercontent.com/mustafadalga/farm-landing-page/master/assets/img/mountain.png"
					alt="Mountain" class="footer_img">
			</div>
		</footer>
	</div>
	<script src="js/main.js" type="module"></script>

</body>
</html>




