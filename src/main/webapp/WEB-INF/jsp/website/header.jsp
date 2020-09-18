<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<!-- Tieu Long Lanh -->
<head>
<!-- Basic page needs
		============================================ -->
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Fishing World</title>
<link href="static/css/jquery-ui/jquery-ui.css" rel="stylesheet">

<!-- Mobile specific metas
		============================================ -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font
		============================================ -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="static/assets/img/favicon.ico">

<!-- CSS  -->

<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/bootstrap.min.css">

<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/owl.carousel.css">

<!-- owl.theme CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/owl.theme.css">

<!-- owl.transitions CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/owl.transitions.css">

<!-- font-awesome CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/font-awesome.min.css">

<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="css/animate.css">

<!-- slicknav CSS
		============================================ -->
<link rel="stylesheet" href="css/slicknav.css">

<!-- rs-plugin CSS
		============================================ -->
<link href="lib/rs-plugin/css/settings.css" rel="stylesheet" />

<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="css/normalize.css">

<!-- home-5-color CSS
		============================================ -->
<link rel="stylesheet" href="css/home-5-color.css">

<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/main.css">

<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/style.css">

<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/responsive.css">

<!-- modernizr js
		============================================ -->
<script src="static/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<style>
.navbar-fixed-top {
	top: -60px;
	transition: top 800ms ease 0s;
	position: fixed;
	z-index: 9999;
}

.show {
	top: 0px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.1.min.js"
	type="text/javascript"></script>

<script>
	/* -------------------------------------------------------------------------*
	 * STICKY NAVIGATION
	 * -------------------------------------------------------------------------*/
	$(window).scroll(function() {
		if ($(window).scrollTop() >= 99) {
			$('#nav').addClass('navbar-fixed-top');
		}

		if ($(window).scrollTop() >= 100) {
			$('#nav').addClass('show');
		} else {
			$('#nav').removeClass('show navbar-fixed-top');
		}
	});
</script>
<body class="home-5">
	<!-- Load Facebook SDK for JavaScript -->
	<div id="fb-root"></div>
	<script>
		window.fbAsyncInit = function() {
			FB.init({
				xfbml : true,
				version : 'v3.2'
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- Your customer chat code -->
	<div class="fb-customerchat" attribution=setup_tool
		page_id="363102004547080"
		logged_in_greeting="Chào mừng bạn đến với Dụng cụ câu cá FishingWorld của chúng tôi!"
		logged_out_greeting="Chào mừng bạn đến với Dụng cụ câu cá FishingWorld của chúng tôi!">
	</div>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->

	<!-- header start -->
	<header> <!-- header-top-area start -->
	<div class="header-top-area" id="nav">
		<div class="container">
			<div class="row">
				<!-- header-social-icon start -->
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="header-social-icon">
						<a href="#" title="Facebook"><i class="fa fa-facebook"></i></a> <a
							href="#" title="twitter"><i class="fa fa-twitter"></i></a> <a
							href="#" title="tumblr"><i class="fa fa-tumblr"></i></a> <a
							href="#" title="google-plus"><i class="fa fa-google-plus"></i></a>
						<a href="#" title="dribbble"><i class="fa fa-dribbble"></i></a>
					</div>
					<div class="email-content">
						<span>fishingworld@gmail.com</span>
					</div>
				</div>
				<!-- header-social-icon end -->
				<!-- header-top-menu start -->
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="header-top-menu">
						<ul>
							<li><a href="loginAdmin"><spring:message
										code="label.login" /></a></li>
							<li><a href="static/?lang=vi"><img
									src="static/images/language/default.png"> VietNam <i
									class="fa fa-caret-down"></i></a>
								<ul>
									<li><a href="static/?lang=en"><img
											src="static/images/language/english.png"> English</a></li>
									<li><a href="static/?lang=ja"><img
											src="static/images/language/japan.png"> Japan</a></li>
									<li><a href="static/?lang=ko"><img
											src="static/images/language/Korea.png"> Korea</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- header-top-menu end -->
			</div>
		</div>
	</div>
	<!-- header-top-area end --> <!-- header-mid-area start -->
	<div class="header-mid-area">
		<div class="container">
			<div class="row">
				<!-- logo start -->
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="logo">
						<a href="home"><img src="static/assets/img/logo/logofish.png"
							alt="" /></a>
					</div>
				</div>
				<!-- logo end -->
				<!-- cat-search start -->
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="cat-search">
						<div class="cart-total">
							<ul>
							<!-- giỏ hàng -->
								<li id="cartButton" type="submit" name="submit"
									value="Xem giỏ hàng"><a><span class="cart-icon"><i
											class="fa fa-shopping-cart"></i></span></a>
									<div class="mini-cart-content">
										<div class="cart-box">
											<form action="">
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="display" value="1" />
												<p>
													<input id="cartButton"
														style="background-color: transparent; border: none;"
														type="submit" name="submit" value="Xem giỏ hàng" />
												</p>
											</form>
											<div class="clearfix"></div>
											<div id="cart-box"></div>
										</div>
										<div class="clear"></div>
										<p class="total">
											Tổng tiền: <span id="cartTotal" class="amount">0 VNĐ
												</span>
										</p>
										<div class="clear"></div>
									</div></li>
							</ul>
						</div>
						<div class="header-search">
							<div class="top-category">
								<ul>
									<li><a><spring:message code="label.category" /></a>
										<ul>
											<li><a><jsp:include page="banner.jsp" /></a></li>
										</ul></li>

									<li class="search-top">
										<div>
											<form action="search" method="get">
												<input id="autocomplete" type="text" name="searchValue"
													placeholder="<spring:message code="label.search"/>" />
												<button type="submit">
													<i class="fa fa-search"></i>
												</button>
											</form>
										</div> <script src="static/js/jquery/jquery.js"></script> <script
											src="static/js/jquery/jquery-ui.js"></script> <script
											type="text/javascript">
												var availableTags = [
														"Cần câu", "Mồi câu",
														"Máy câu", "Dây câu",
														"Phao-Chì", "Lưỡi",
														"Phụ kiện câu" ];
												$("#autocomplete")
														.autocomplete(
																{
																	source : availableTags
																});
											</script>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- cat-search end -->
			</div>
		</div>
	</div>
	<!-- header-mid-area end --> <!-- mainmenu-area start -->
	<div class="mainmenu-area">
		<div class="container">
			<div class="menu-bg-home-5">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="mainmenu">
							<nav>
							<ul>
								<li><a href="home"><spring:message code="label.home" /></a></li>

								<li><a href="allProduct"><spring:message
											code="label.product" /> <span><i
											class="fa fa-caret-down"></i></span></a></li>


								<li><a href="about"><spring:message code="label.about" /></a></li>
								<li><a href="blog"><spring:message code="label.blog" /></a></li>
								<li><a href="suport"><spring:message code="label.guide" /></a></li>
							</ul>
							</nav>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	</header>
	<!-- header end -->

</body>

<!-- Tieu Long Lanh -->
</html>