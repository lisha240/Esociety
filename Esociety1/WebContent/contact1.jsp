<%@page import="bean.User"%>
<%response.setHeader("Catch-control", "no-catch") ;
response.setHeader("Catch-control", "no-store") ;
response.setHeader("pragma", "no-catch") ;
response.setDateHeader("Expire",0) ;


%>



<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>A2Z a corporate Category Flat Bootstrap Responsive Website Template | Contact :: w3layouts</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="A2Z Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //for-mobile-apps -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="//fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">

</head>

<body>
	<!-- header -->
	<div class="header-w3layouts">
		<div class="container">

			<div class="logo-nav-agileits">
				<div class="logo-nav-left">
					<h1>
						<a href="index.html">
							<span class="fa fa-home"></span>a2z
							<span class="logo-title">home services</span>
						</a>
					</h1>
				</div>

				<div class="header-grid-left-wthree">
					<div class="h3-title">
						<h3>contact us</h3>
					</div>
					<ul>
						<li>
							<span class="fa fa-envelope" aria-hidden="true"></span>
							<a href="mailto:info@example.com">a2zservices.com</a>
						</li>
						<li>
							<span class="fa fa-phone" aria-hidden="true"></span>+1234 567 892</li>
						<li>
							<span class="fa fa-mobile" aria-hidden="true"></span>+12 234 5678
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<div class="logo-nav-left1">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
						
						<li  id="lmain">
								<a href="index1.jsp">Home</a>
							</li>
							
							<li id="lmain" >
								<a href="profile.jsp">Profile</a>
							</li>
							
					    	
						      
	                         <li  id="lmain">
								<a href="about.jsp">about us</a>
							</li>
							
								<li id="lmain">
						 	    <a href="services.jsp">services</a>
							</li>
							
							   <li  id="lmain">
								<a href="complain.jsp">Complain Box</a>
							</li>
							
							
						     <li id="lmain">
						 	    <a href="allComplain.jsp">All Complain</a>
							</li>
						
							
							<li  id="lmain" class="active">
						 	    <a href="contact1.jsp">contact us</a>
							</li>
								
						 	
							
							<li   id="lmain">
								<a href="logout.jsp">Logout</a>
							</li>
							
							
												
						
						</ul>
					</div>

				</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //header -->
	<div class="banner-bg2 ">
		<div class="banner-info bg3 inner">
			<h3>one click repair service</h3>
			<p>repair.&nbsp;improve.&nbsp;maintain</p>
		</div>
	</div>
	<!-- breadcrumbs -->
	<div class="breadcrumbs-w3l">
		<div class="container">
			<span class="breadcrumbs">
				<a href="index.html">Home</a> |
				<span>Contact Us</span>
			</span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- contact -->
	<div class="w3ls-section banner-single">
		<div class="container">
			<h4 class="main-title">Give Your Feedback</h4>
			<div class="about-inner-main">
				<div class="col-md-6 contact-left">
				<!-- 	<div class="agile-contact-top">
						<h4>address </h4>
						<p>1234k Avenue,Block-4,New York City.</p>
					</div>
					<div class="contact-bottom">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387193.3060153584!2d-74.2598711799434!3d40.69714940555201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1510842846108"
						    style="border:0" allowfullscreen></iframe>
					</div>
				 --></div>
				<div class="col-md-6 w3layouts-reg-form contact-form-row-agileinfo" >
					<h4 class="form-con-txt">send us a Feedback</h4>
					<form action="user" method="post" class="banner_form contact-inner-form">
					
					 <% User u = (User)session.getAttribute("user"); %> 
					 <% %>
						<div class="contact-form-left contact-field1">
						
						
						<div class="clearfix"></div>
						<div class="form-tx contact-field3">
							<label class="contact-form-text">Feedback</label>
							<textarea placeholder="your address" required="" name="description"></textarea>
						</div>
						
						 <input type="hidden" name="uid" value="<%=u.getUid()%>">
						 <input type="hidden" name="fname" value="<%=u.getFname()%>">
						 <input type="hidden" name="bn" value="<%=u.getBn()%>">
						 <input type="hidden" name="flat" value="<%=u.getFlat()%>">
						
						<input type="submit" name="action" value="feedback" width="50px;" hight="50px;">
						
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- contact -->
	<div class="w3ls-section app-head">
		<div class="container">
			<div class="col-md-4 col-sm-4 app-mobile">
				<img src="images/mobile.png" alt="" class="img-responsive" />
			</div>
			<div class="col-md-8 col-sm-8 app-main">
				<h6>home services at your
					<span>finger tips!</span>
				</h6>
				<div class="app-form">
					<p>get the SMS link to download free app </p>
					<form action="#" method="post" class="banner_form">
						<div class="sec-left">
							<input placeholder="Enter your mobile #" name="first name" type="text" required="">
						</div>
						<input type="submit" value="get the app">
						<div class="clearfix"></div>
					</form>
				</div>
				<ul class="app-links">
					<li>
						<a href="#">
							<img src="images/1.png" alt="">
						</a>
					</li>
					<li>
						<a href="#">
							<img src="images/2.png" alt="">
						</a>
					</li>
				</ul>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer-main-w3_agile">
		<div class="footer-dot">
			<div class="container">
				<div class="footer-bottom">
					<div class="col-md-4 col-sm-6 col-xs-6 footer-grid1 address">
						<h4>Contact Info</h4>
						<ul>
							<li>
								<span class="fa fa-home" aria-hidden="true"></span>
								<p>1234k Avenue,block-4,New York City.</p>
							</li>
							<li>
								<span class="fa fa-envelope-o" aria-hidden="true"></span>
								<a href="mailto:info@example.com">info@example.com</a>
							</li>
							<li>
								<span class="fa fa-phone" aria-hidden="true"></span>
								<p>+1234 567 892</p>
							</li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 footer-grid1 res">
						<h4>services</h4>
						<ul>
							<li>
								<a href="#">appliance repair</a>
							</li>
							<li>
								<a href="#">home improvement</a>
							</li>
							<li>
								<a href="#">home maintenance</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 footer-grid1 ftr-img">
						<h4>latest Posts</h4>
						<ul>
							<li>
								<a href="single.html">
									<img src="images/t1.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t2.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t3.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t4.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t1.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t2.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t3.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t2.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.html">
									<img src="images/t4.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-6 col-xs-6 footer-grid1">
						<h4>legal</h4>
						<ul>
							<li>
								<a href="privacy.html">privacy policy</a>
							</li>
							<li>
								<a href="#">licence info</a>
							</li>
							<li>
								<a href="terms.html">terms of use</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="agileinfo-subscribe-grid text-center">
					<img src="images/mail.png" alt="">
					<h4>stay upto date with our newsletter!</h4>
					<p>Sign up to receive helpful Q&A, info on upcoming services and more.</p>
					<form action="#" method="post">
						<input type="email" placeholder="Enter your email.." name="Subscribe" required="">
						<button class="btn1">sign up</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="cpy-footer">
		<div class="container">
			<div class="footer-top">
				<div class="logo-nav-left footer-top1">
					<h2>
						<a href="index.html">
							<span class="fa fa-home logo-ftr"></span>a2z
							<span class="logo-title">home services</span>
						</a>
					</h2>
				</div>
				<div class="footer-social">
					<h4>connect with us</h4>
					<ul>
						<li>
							<a href="#">
								<span class="fa fa-facebook icon_facebook"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-twitter icon_twitter"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-dribbble icon_dribbble"></span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="fa fa-google-plus icon_g_plus"></span>
							</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="cpy-text">
			<p>� 2017 A2Z. All rights reserved | Design by
				<a href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>

	</div>
	<!--//footer  -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js-->
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script  src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up-->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<script src="js/SmoothScroll.min.js"></script>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>

</html>