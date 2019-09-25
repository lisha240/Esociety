<%response.setHeader("Catch-control", "no-catch") ;
response.setHeader("Catch-control", "no-store") ;
response.setHeader("pragma", "no-catch") ;
response.setDateHeader("Expire",0) ;


%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- 
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/

<!DOCTYPE html>
<html lang="zxx">
 -->
 <style>
  #lmain
{
width:240px;
}
</style>
 
 	<script> 
		// addEventListener("load", function () {
			//setTimeout(hideURLbar, 0);
	//	}, false);

		//function hideURLbar() {
			//window.scrollTo(0, 1);
	//}
		/* function check(value)
		{
			//alert(value);
			if(value=="USER")
				{
				//alert(value);
				document.getElementById("u1").style.display="block";
				document.getElementById("u2").style.display="block";
				}
			if(value=="OTHER")
				{
				//altert(in);
				document.getElementById("v1").style.display="block";
			/* //	document.getElementById("u2").style.display="none";
		 */		
				/* }
			
		} */ 
	</script>
 
<head>
	<title>A2Z a Corporate Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="a2z Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
	<!--banner slider  -->
	<link href="css/JiSlider.css" rel="stylesheet">
	<!-- //banner-slider -->
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="//fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">

</head>

<body>

<%
	session.removeAttribute("user");
	session.invalidate();
	response.sendRedirect("index.jsp");
%>


	<!-- header -->
	<div class="w3layouts-header">
		<div class="container">

			<div class="logo-nav-agileits">
				<div class="logo-nav-left">
					<h1>
						<a href="index.html">
							<span class="fa fa-home"></span>
							<br>
							
							<span class="logo-title">E-Society</span>
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
							<a href="mailto:info@example.com">lishampatel2411@gmail.com</a>
						</li>
						<li>
							<span class="fa fa-phone" aria-hidden="true"></span>+1 8160536594</li>
						<li>
							<span class="fa fa-mobile" aria-hidden="true"></span>+1  7567663679
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<div class="logo-nav-left1">
				<nav class="navbar navbar-default">
					
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
							<li class="active">
								<a href="index.jsp">Home</a>
							</li>
							
					
						
	                         <li  id="lmain">
								<a href="about.jsp">about us</a>
							</li>
							
								<li id="lmain">
						 	    <a href="services.jsp">services</a>
							</li>
						
							
							<li  id="lmain">
						 	    <a href="contact.jsp">contact us</a>
							</li>
								
						 	
							
							<li   id="lmain">
								<a href="login.jsp">Login</a>
							</li>
							
							
							
					<!-- 	<li class="s-bar">
							
								<div class="search-w3_agileits">
									<input class="search_box" type="checkbox" id="search_box">
									<label class="icon-search" for="search_box">
										<span class="fa fa-search" aria-hidden="true"></span>
									</label>
									<div class="search_form">
										<form action="#" method="post">
											<input type="search" name="Search" placeholder=" " />
											<input type="submit" value="Search">
										</form>
									</div>
									</li>
					 -->	 	</div>
							</li>
						 </ul>
					</div>

				</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
		<div class="banner-silder">
		<div id="JiSlider" class="jislider">
			<ul>
				<li>
					<div class="banner-top banner-top1">
						<div class="container">
							<div class="banner-info info2">
								<h3>one stop home services</h3>
								<p>let us do it for you.</p>

							</div>
						</div>
					</div>
				</li>


				<li>
					<div class="banner-top banner-top2">
						<div class="container">
							<div class="banner-info bg3 info2">
								<h3>one click repair service</h3>
								<p>repair.&nbsp;improve.&nbsp;maintain</p>
							</div>

						</div>
					</div>
				</li>
				<li>
					<div class="banner-top banner-top3">
						<div class="container">
							<div class="banner-info bg3">
								<h3>Property Maintenance Services</h3>
								<p>one call does it all.</p>
							</div>

						</div>
					</div>
				</li>
			</ul>
		</div>
		banner
	 banner bottom
		<div class="banner-btm">
			<div class="container">
				<div class="banner-bottom-main">
					<div class="col-md-4 banner-btmg1">

						<div class="form-text">
							<h3>Looking for a flat?</h3>
							<p>We solve your Home problem</p>
					<!-- 	//	<img src="images/f1.png" alt="" />
					//	<img src="images/a1.png" alt="" class=" " />
		 -->			<!-- <img src="images/girl.png" alt="" /> -->
						</div>
					 	<form action="user" method="post" class="banner_form">
							<div class="sec-left">
						<label class="contact-form-text">FIRSTNAME</label>
								<input placeholder=" " name="fname" type="text" required="">
							</div>
								<div class="sec-left">
						<label class="contact-form-text">LASTNAME</label>
								<input placeholder=" " name="lname" type="text" required="">
							</div>
						
							<div class="sec-right">
								<label class="contact-form-text">Email</label>
								<input placeholder=" " name="email" type="text" required="">
							</div>
							
								<div class="sec-right">
								<label class="contact-form-text">Password</label>
								<input placeholder=" " name="pass" type="password"   class="form-control" required="">
							</div>
						
						
							<div class="sec-left">
								<label class="contact-form-text">Mobile no</label>
								<input placeholder=" " name="mobno" type="text" required="">
							</div>
						<!-- 	<div class="form-tx">
								<label class="contact-form-text">BLOCK NO</label>
								<textarea placeholder="your address"   name="bno" type="text" required=""></textarea>
							</div>
						 -->	<!-- <div class="form-tx" -->>
								<!-- <label class="contact-form-text">FLAT NO</label>
								<textarea placeholder="your address"  name="fno" type="text" required=""></textarea>
							</div>
							 -->
							 
							 
					<!-- 		 	<div class="form-select sec-right">
								<label class="contact-form-text">Select BLOCK NO</label>
								<select name="bn">
									<option value="0">---- SELECT ----</option>
									<option value="A">A</option>
									<option value="B">B</option>
								<option value="C">C</option>
									<option value="D">D</option>
									<option value="E">E</option>
									<option value="F">F</option>
								 </select>
						
						<div class="form-select sec-right">
								<label class="contact-form-text">Select FLAT NO</label>
								<select name="flat">
									<option value="0">---- SELECT ----</option>
									<option value="1">1</option>
									<option value="2">2</option>
								<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								 </select>
						 -->
							
							 
							 
							 
							 
							 
							 
							 
							 
							 
							 
							 
							 
							 
							 
						<!-- 	<div class="form-select sec-right">
								<label class="contact-form-text">WHO YOU ARE?</label>
								<select name="usertype"   class="form-control"   onchange="check(this.value)">
								
									<option value="0"> </option>
									<option value="USER">USER</option>
									<option value="OTHER">OTHER</option>
								</select><br></br>
								
								 	 
							 	<div class="form-select sec-right"   id="u1">
								<label class="contact-form-text">Select BLOCK NO</label>
								<select name="bn" >
									<option value="0">---- SELECT ----</option>
									<option value="A">A</option>
									<option value="B">B</option>
								<option value="C">C</option>
									<option value="D">D</option>
									<option value="E">E</option>
									<option value="F">F</option>
								 </select>
						
						<div class="form-select sec-right"  id="u2">
								<label class="contact-form-text">Select FLAT NO</label>
								<select name="flat">
									<option value="0">---- SELECT ----</option>
									<option value="1">1</option>
									<option value="2">2</option>
								<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								 </select>
								 
								  	<div class="form-select sec-right"   id="v1">
								<label class="contact-form-text">what do you work?</label>
								<select name="wk" >
									<option value="0">---- select your work ----</option>
									<option value="A">carpentor</option>
									<option value="B">painter</option>
								<option value="C">electrical</option>
									<option value="D">Plumber</option>
									<option value="E">cleaner</option>
									<option value="F">home Appliances</option>
								 </select>
						
				 -->				 
				<div class="wthree-text">
							<ul>
								<li>
									<label class="anim">
										<input type="checkbox" class="checkbox">
										<span> I accept the terms and conditions</span>
									</label>
								</li>
							</ul>
		<div class="clearfix"> </div>
					
				
 					<input type="submit"  name="action" value="submit">
						</form>
					</div>
				 	<div class="col-md-8 banner-btm-grid2">
						<div class="col-md-4 banner-grid2">
							<div class="banner-subg1">
								<h3>maintenance</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit estibulum nibh urna scing.</p>
								<span class="fa fa-cog" aria-hidden="true"></span>
								<div class="read-btn">
									<a href="about.html">view more</a>
								</div>
							</div>
							<div class="banner-subg1">
								<h3>cleaning</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit estibulum nibh urna scing.</p>
								<span class="fa fa-check-square-o" aria-hidden="true"></span>
								<div class="read-btn">
									<a href="about.html">view more</a>
								</div>
							</div>

						</div>
						<div class="col-md-4 banner-grid2">
							<div class="banner-subg1">
								<h3>repair</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit estibulum nibh urna scing.</p>
								<span class="fa fa-yelp" aria-hidden="true"></span>
								<div class="read-btn">
									<a href="about.html">view more</a>
								</div>
							</div>
							<div class="banner-subg1">
								<h3>improvement</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit estibulum nibh urna scing.</p>
								<span class="fa fa-gg" aria-hidden="true"></span>
								<div class="read-btn">
									<a href="about.html">view more</a>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- //banner bottom -->
		<!-- about -->
		<div class="agile-about-main">
			<div class="col-md-4 about-left">
				<div class="about-main-bg text-center">
					<h4 class="about-title">Why</h4>
					<h4 class="sub">
						<span>c</span>hoose
						<span>u</span>s?</h4>
				</div>
			</div>
			<div class="col-md-8 about-bottom-g1">
				<h4>One Stop Solution for your Complete Home Maintenance</h4>
				<!-- <h4>get easy home repairs and upgrades with professional home service providers</h4> your complete home solution.-->
				<div class="about-grid">
					<div class="about-bottom-right">
						<div class="abouthome-grid">
							<span class="hi-icon hi-icon-archive fa fa-check"> </span>
						</div>
						<div class="about-bottom">
							<h5>vision</h5>
							<p>Consectetur adipiscing elit estibulum nibh urna</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="about-bottom-right">
						<div class="abouthome-grid">
							<span class="hi-icon hi-icon-archive  fa fa-book"> </span>
						</div>
						<div class="about-bottom">
							<h5>affordable</h5>
							<p>Elit consectetur adipiscing estibulum nibh urna</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class=" about-bottom-right">
						<div class="abouthome-grid">
							<span class="hi-icon hi-icon-archive fa fa-photo"> </span>
						</div>
						<div class="about-bottom">
							<h5>quality</h5>
							<p>Consectetur adipiscing elit estibulum nibh urna</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class=" about-bottom-right">
						<div class="abouthome-grid">
							<span class="hi-icon hi-icon-archive fa fa-briefcase"> </span>
						</div>
						<div class="about-bottom">
							<h5>24*7 support</h5>
							<p>Adipiscing consectetur elit estibulum nibh urna</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="abt-img">
					<img src="images/a1.png" alt="" class="img-responsive" />
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //about -->
	<!--  about bottom -->
	<div class="w3ls-section">
		<div class="container">
			<div class="main-bottom">
				<div class="col-md-6 col-sm-6 mb-left">

				</div>
				<div class="col-md-6 col-sm-6 mb-right">
					<h4>service you can trust</h4>
					<p>protect all your home appliances & systems.</p>
					<a href="services.html">view all services</a>
				</div>

			</div>
		</div>
	</div>
	<!--  //about bottom -->
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
			<!-- 		<div class="col-md-3 col-sm-6 col-xs-6 footer-grid1 ftr-img">
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
								<a href="single.jsp">
									<img src="images/t2.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
							<li>
								<a href="single.jsp">
									<img src="images/t4.jpg" alt=" " class="img-responsive" />
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-2 col-sm-6 col-xs-6 footer-grid1">
						<h4>legal</h4>
						<ul>
							<li>
								<a href="privacy.jsp">privacy policy</a>
							</li>
							<li>
								<a href="#">licence info</a>
							</li>
							<li>
								<a href="terms.jsp">terms of use</a>
							</li>
						</ul>
					</div>
				 -->	<div class="clearfix"></div>
				 </div>
				<!-- <div class="agileinfo-subscribe-grid text-center">
				<img src="images/mail.png" alt="">
 				<h4>stay upto date with our newsletter!</h4>
					<p>Sign up to receive helpful Q&A, info on upcoming services and more.</p>
					<form action="#" method="post">
						<input type="email" placeholder="Enter your email.." name="Subscribe" required="">
						<button class="btn1">sign up</button>
					</form>
				</div>
 -->			</div>
		</div>
	</div>
	<div class="cpy-footer">
		<div class="container">
			<div class="footer-top">
				<div class="logo-nav-left footer-top1">
					<h2>
						<a href="index.jsp">
							<span class="fa fa-home logo-ftr"></span>
							<br>
							<span class="logo-title">E-Society</span>
						</a>
					</h2>
				</div>
			<!-- 	<div class="footer-social">
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
			<p>© 2017 A2Z. All rights reserved | Design by
				<a href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
 
	</div>
 -->	
 <!--//footer  -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js-->
	<!--banner-slider-->
	<script src="js/JiSlider.js"></script>
	<script> 
		$(window).load(function () {
			$('#JiSlider').JiSlider({
				color: '#fff',
				start: 1,
				reverse: false
			}).addClass('ff')
		})
	</script>
	<!-- //banner-slider -->
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!-- start-smooth-scrolling -->
	<script  src="js/move-top.js"></script>
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
	<!-- smooth-scrolling-of-move-up -->
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
	<script  src="js/SmoothScroll.min.js"></script>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>

</html>
