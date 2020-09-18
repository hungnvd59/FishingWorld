<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Fishing World</title>
<meta name="description" content="Trang chủ">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--Custom Theme files -->
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
<link rel="stylesheet" href="static/assets/css/animate.css">

<!-- slicknav CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/slicknav.css">

<!-- rs-plugin CSS
		============================================ -->
<link href="static/assets/lib/rs-plugin/css/settings.css"
	rel="stylesheet" />

<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/normalize.css">

<!-- home-5-color CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/home-5-color.css">

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
<script src="static/js/bootstrap.js"></script>
</head>
<style>
.button2 {
	background-color: white;
	color: black;
	border: 2px solid #008CBA;
}

.button2:hover {
	background-color: #008CBA;
	color: white;
}
</style>

<body class="home-5">

	<!-- header start -->
	<header>
		<div>
			<!-- header -->
			<jsp:include page="website/header.jsp" />
			<!-- header -->
		</div>

	</header>
	<!-- header end -->



	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="breadcrumb">
				<ul>
					<li><a href="">Trang chủ <i class="fa fa-angle-right"></i></a></li>
					<li>Blog</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- breadcrumb-area end -->
	<!-- blog-main-area start -->
	<div class="blog-main-area">
		<div class="container">
			<div class="row">
			
				<div class="col-lg-12 col-md-12 blog-nonsidebar">
					<!-- blog start -->
					<c:forEach var="blog" items="${blogs}">
					<article class="blog-full even">
						<!-- post-thumbnail start -->
						<div class="post-thumbnail">
							<img src="${blog.image}" alt="" />
							<div class="post-date ontop">
								<span class="day">Blog</span> <span class="blog-comments"></span>
							</div>
						</div>
						<!-- post-thumbnail end -->
						<!-- post-wrapper start -->
						<div class="post-wrapper">
							<div class="post-info-blog">
								<h2 class="post-tile">
									${blog.title}
								</h2>
								<div class="entry-meta-small">
									/ Đăng bởi <span class="author-info">Fishing World Blog</span>
								</div>
								<div class="entry-summary">
									<p>${blog.description}...</p>
								</div>
								 <a class="readmore" href="detailBlog?cateID=${blog.category.categoryId}&productID=${blog.productId}">Đọc thêm<i
									class="fa fa-arrow-right"></i></a>
							</div>
						</div>
						<!-- post-wrapper end -->
					</article>
					</c:forEach>
				</div>
				<div class="col-lg-12 col-md-12"></div>
			</div>
		</div>
	</div>
	<!-- blog-main-area end -->



	<!-- QUICKVIEW PRODUCT -->
	<!-- END QUICKVIEW PRODUCT -->


	<!-- JS -->

	<!-- jquery js -->
	<script src="static/assets/js/vendor/jquery-1.11.2.min.js"></script>

	<!-- bootstrap js -->
	<script src="static/assets/js/bootstrap.min.js"></script>

	<!-- owl.carousel.min js -->
	<script src="static/assets/js/owl.carousel.min.js"></script>

	<!-- slicknav js -->
	<script src="static/assets/js/jquery.slicknav.js"></script>

	<!-- countdown js -->
	<script src="static/assets/js/jquery.countdown.min.js"></script>

	<!-- price-slider js -->
	<script src="static/assets/js/price-slider.js"></script>

	<!-- jquery.scrollUp js -->
	<script src="static/assets/js/jquery.scrollUp.min.js"></script>

	<!-- Lib js -->
	<script
		src="static/assets/lib/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
	<script
		src="static/assets/lib/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="static/assets/lib/rs-plugin/rs.home.js"></script>

	<!-- plugins js -->
	<script src="static/assets/js/plugins.js"></script>

	<!-- main js -->
	<script src="static/assets/js/main.js"></script>
	<div>
		<jsp:include page="website/plugin.jsp"></jsp:include>
	</div>
	<!-- footer start -->
	<footer>
		<!-- footer-top-area start -->
		<div class="footer-top-area">
			<div class="container">
				<div class="row">
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget widget-contact">
							<h3 class="widget-title">
								<spring:message code="label.address" />
							</h3>
							<ul class="footer-menu">
								<li><i class="fa fa-map-marker"> </i> <strong><spring:message
											code="label.address" /></strong> : Linh Trung, Thủ Đức, Hồ Chí Minh,
									Việt Nam</li>
								<li><i class="fa fa-phone"> </i> <strong>Hot Line</strong>
									: (012) 888 8888</li>
								<li><i class="fa fa-envelope"> </i> <strong>Email</strong>
									: fishingworld@gmail.com</li>
								<li><p>
										<spring:message code="label.address1" />
									</p></li>
							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title">
								<spring:message code="label.cn" />
							</h3>
							<ul class="footer-menu">
								<li><spring:message code="label.cn1" /> 031xxxxxxx</li>
								<li><spring:message code="label.cn2" /></li>
								<li><spring:message code="label.cn3" /></li>
								<li><a href="#"><spring:message code="label.cn4" /></a></li>
								<li><a href="#"><spring:message code="label.cn5" /></a></li>

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title">
								<spring:message code="label.face" />
							</h3>
							<ul class="footer-menu">
								<li><iframe
										src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FD%25E1%25BB%25A5ng-c%25E1%25BB%25A5-c%25C3%25A2u-c%25C3%25A1-Fishing-World-363102004547080%2F%3Fmodal%3Dadmin_todo_tour&tabs=timeline&width=250&height=250&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
										width="250" height="250"
										style="border: none; overflow: hidden" scrolling="no"
										frameborder="0" allowTransparency="true"
										allow="encrypted-media"></iframe></li>

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 hidden-sm">
						<div class="footer-widget">
							<h3 class="widget-title">
								<spring:message code="label.map" />
							</h3>
							<ul class="footer-menu">
								<li><iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2716356055207!2d106.78896371425714!3d10.866932360489454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276120e747b7%3A0x4621264c786596c7!2zxJDhuqFpIGjhu41jIE7DtG5nIEzDom0!5e0!3m2!1svi!2s!4v1553924537921!5m2!1svi!2s"
										width="325" height="250" frameborder="0" style="border: 0"
										allowfullscreen></iframe></li>

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->

				</div>
			</div>
		</div>
		<!-- footer-top-area end -->
		<!-- footer-bootom-area start -->
		<div class="footer-bootom-area">
			<div class="container">
				<div class="row">
					<div>
						<div class="copyright">
							<p style="text-align: center">
								Copyright © 2020 <a href="" target="_blank">Fishingworld</a> All
								Rights Reserved
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- footer-bootom-area end -->
	</footer>
	<!-- footer end -->

</body>
<script src="static/js/minicart.js"></script>
<script>
	paypal.minicart.render({
		strings : {
			button : "VNĐ",
			buttonAlt : "Tổng tiền:",
			discount : "Giảm giá:"
		}
	});

	window.onload = function() {
		var items = paypal.minicart.cart.items(), quantity = 0;
		if (items.length > 0) {
			for (var i = 0; i < items.length; i++) {
				quantity += items[i].get('quantity');
			}
			if (quantity > 0) {
				document.getElementById("cart-box").innerHTML = '<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
			}
			document.getElementById("cartTotal").innerHTML = paypal.minicart.cart
					.total()
					+ " VNĐ (" + quantity + ")";
		} else {
			document.getElementById("cartTotal").innerHTML = "0 VNĐ (0)";
		}
	};

	paypal.minicart.cart
			.on(
					'add',
					function() {
						var items = this.items(), quantity = 0, price = 0, total = this
								.total();

						for (var i = 0; i < items.length; i++) {
							quantity += items[i].get('quantity');
							price = items[i].get('amount');
						}
						if (quantity > 0) {
							document.getElementById("cart-box").innerHTML = '<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
						}
						document.getElementById("cartTotal").innerHTML = total
								+ " VNĐ" + " (" + quantity + ")";
					});

	paypal.minicart.cart.on('remove', function() {
		var items = this.items(), quantity = 0, total = this.total();
		for (var i = 0; i < items.length; i++) {
			quantity += items[i].get('quantity');
		}
		document.getElementById("cartTotal").innerHTML = total + " VNĐ" + " ("
				+ quantity + ")";
	});

	$('.clickey')
			.click(
					function(e) {
						e.stopPropagation();

						var items = paypal.minicart.cart.items(), length = items.length, count = 0, price = 0, productTotal = 0, product_name = '', i;

						for (i = 0; i < length; i++) {
							count = items[i].get('quantity');
							price = items[i].amount();
							product_name = items[i].get('item_name');
							productTotal = items[i].amount() * count;
						}

						window.location.replace("order");
					});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</html>