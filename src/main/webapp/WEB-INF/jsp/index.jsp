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

	<!-- corporate-area-home-5 start -->
	<div class="corporate-area-home-5">
		<div class="container">
			<div class="row">
				<!-- single-corporate start -->
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="single-corporate">
						<div class="corporate-icon">
							<i class="fa fa-truck"></i>
						</div>
						<div class="corporate-text">
							<h4><spring:message code="label.ship"/> </h4>
						</div>
					</div>
				</div>
				<!-- single-corporate end -->
				<!-- single-corporate start -->
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="single-corporate">
						<div class="corporate-icon">
							<i class="fa fa-usd"></i>
						</div>
						<div class="corporate-text">
							<h4><spring:message code="label.ship1"/> </h4>
						</div>
					</div>
				</div>
				<!-- single-corporate end -->
				<!-- single-corporate start -->
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="single-corporate">
						<div class="corporate-icon">
							<i class="fa fa-life-bouy"></i>
						</div>
						<div class="corporate-text">
							<h4><spring:message code="label.ship2"/> </h4>
						</div>
					</div>
				</div>
				<!-- single-corporate end -->
			</div>
		</div>
	</div>
	<!-- corporate-area-home-5 end -->
	<!-- HOME SLIDER -->
	<div class="slider-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="fullwidthbanner-container">
						<div class="fullwidthbanner4">
							<ul>
								<!-- SLIDE  -->
								<li data-transition="random" data-slotamount="7"
									data-masterspeed="1000"><img
									src="static/assets/img/slider/slider-5/1.jpg" alt="slide"></li>
								<!-- SLIDE  -->
								<li data-transition="random" data-slotamount="7"
									data-masterspeed="1000"><img
									src="static/assets/img/slider/slider-5/2.jpg" alt="slide"></li>
								<!-- SLIDE  -->
								<li data-transition="random" data-slotamount="7"
									data-masterspeed="1000"><img
									src="static/assets/img/slider/slider-5/3.jpg" alt="slide"></li>
								<!-- SLIDE  -->
								<li data-transition="random" data-slotamount="7"
									data-masterspeed="1000"><img
									src="static/assets/img/slider/slider-5/4.jpg" alt="slide"></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 promo-home-5">
					<!-- single-promo start -->
					<div class="single-promo">
						<a href="#"><img src="static/assets/img/promotion/2.jpg"
							alt="" /></a>
					</div>
					<!-- single-promo end -->
					<!-- single-promo start -->
					<div class="single-promo">
						<a href="#"><img src="static/assets/img/promotion/1.jpg"
							alt="" /></a>
					</div>
					<!-- single-promo end -->
				</div>
			</div>
		</div>
	</div>
	<!-- HOME SLIDER END -->
	<!-- category-area start -->
	<div class="category-area-home-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
	</div>
	<!-- category-area end -->


	<!-- cần câu -area start -->
	<div class="features-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="section-heading">
						<h3><spring:message code="label.product"/></h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="features-curosel">
					<!-- single-features start -->
					<c:forEach var="product" varStatus="status" items="${mostViews}">
						<div class="col-md-3">
							<div class="single-features">
								<div class="product-img">
										<a
											href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">
											<img src="${product.image}" class="img-responsive" />
										</a> <a class="name"
											href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}"><spring:message code="label.detailProduct"/></a>
								</div>
								<div class="product-content">

									<h5>
										<a class="name"
											href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">${product.productName}</a>
									</h5>
									<span class="item_price">${product.price}đ</span>
									<div class="action-buttons">
									<!-- Thêm giỏ hàng -->
										<form action="#" method="post">
											<fieldset>
												<input type="hidden" name="cmd" value="_cart" /> <input
													type="hidden" name="add" value="1" /> <input type="hidden"
													name="business" value="" /> <input type="hidden"
													name="item_name" value="${product.productName}" /> <input
													type="hidden" name="amount" value="${product.price}" /> <input
													type="hidden" name="discount_amount" value="" /> <input
													type="hidden" name="currency_code" value="VND" /> <input
													type="hidden" name="item_image" value="images/4.png" /> <input
													type="hidden" name="return" value=" " /> <input
													type="hidden" name="cancel_return" value=" " />
												<div class="action-buttons">
													<button class="button button2" type="submit" name="submit"
														value="<spring:message code="label.detailProduct"/>">
														<i class="fa fa-shopping-cart"></i><span
															style="color: black;"><spring:message code="label.addtoCart"/></span>
													</button>
												</div>

											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- single-features end -->
					</c:forEach>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
	<!-- cần câu-area end -->

	<!-- home-4-internal-content end -->




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
							<h3 class="widget-title"><spring:message code="label.address"/></h3>
							<ul class="footer-menu">
								<li><i class="fa fa-map-marker"> </i> <strong><spring:message code="label.address"/></strong> : Linh Trung, Thủ Đức, Hồ Chí Minh, Việt Nam</li>
								<li><i class="fa fa-phone"> </i> <strong>Hot Line</strong>
									: (012) 888 8888</li>
								<li><i class="fa fa-envelope"> </i> <strong>Email</strong>
									: fishingworld@gmail.com</li>
								<li><p><spring:message code="label.address1"/></p></li>
							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title"><spring:message code="label.cn"/></h3>
							<ul class="footer-menu">
								<li><spring:message code="label.cn1"/> 031xxxxxxx</li>
								<li><spring:message code="label.cn2"/></li>
								<li><spring:message code="label.cn3"/></li>
								<li><a href="#"><spring:message code="label.cn4"/></a></li>
								<li><a href="#"><spring:message code="label.cn5"/></a></li>

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title"><spring:message code="label.face"/></h3>
							<ul class="footer-menu">
								<!-- <li><iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FQuynh30471&tabs=272&width=0&height=0&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" 
							width="250" height="250" style="border:none;overflow:hidden" scrolling="no" frameborder="0" 
							allowTransparency="true" allow="encrypted-media"></iframe></li> -->

								<li><iframe
										src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fprofile.php%3Fid%3D100053013210978&tabs=272&width=0&height=0&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
										width="0" height="0" style="border: none; overflow: hidden"
										scrolling="no" frameborder="0" allowTransparency="true"
										allow="encrypted-media"></iframe></li>

								<!-- <li><iframe
										src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FD%25E1%25BB%25A5ng-c%25E1%25BB%25A5-c%25C3%25A2u-c%25C3%25A1-Fishing-World-363102004547080%2F%3Fmodal%3Dadmin_todo_tour&tabs=timeline&width=250&height=250&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
										width="250" height="250"
										style="border: none; overflow: hidden" scrolling="no"
										frameborder="0" allowTransparency="true"
										allow="encrypted-media"></iframe></li> -->

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 hidden-sm">
						<div class="footer-widget">
							<h3 class="widget-title"><spring:message code="label.map"/></h3>
							<ul class="footer-menu">
								<li><iframe
										src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14894.63040185405!2d105.7834509!3d21.046382!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1c9e359e2a4f618c!2sB%C3%A1ch%20Khoa%20Aptech!5e0!3m2!1svi!2s!4v1598235846097!5m2!1svi!2s"
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

						var items = paypal.minicart.cart.items(), length = items.length, count = 0, price = 0, productTotal = 0, name = '', i;

						for (i = 0; i < length; i++) {
							count = items[i].get('quantity');
							price = items[i].amount();
							name = items[i].get('item_name');
							productTotal = items[i].amount() * count;
						}

						window.location.replace("order");
					});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</html>