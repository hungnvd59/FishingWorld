<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>Fishing World</title>
<meta name="description" content="">

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
</head>
<body class="home-5">
<!-- Plugin comment Face -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&appId=384880298681929&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&appId=384880298681929&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- header start -->

	<!-- header end -->
	<!-- corporate-area-home-5 start -->

	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area product-breadcrumb"></div>
	<!-- breadcrumb-area end -->
	<!-- product-main-area start -->
	<div class="product-main-area">
		<div class="container">
			<div class="row">
				<!-- product-page-photo start -->
				<div class="col-lg-5 col-md-5 col-sm-10">
					<div class="product-page-photo">
						<div class="product-page-2-tab">
							<div>
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">

									<li role="presentation" class="active"><a href="#one"
										aria-controls="home" role="tab" data-toggle="tab"><img
											src="${product.image}" alt="" /></a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="one">
										<ul>

											<li data-thumb="${product.image}">

												<div class="thumb-image">
													<img src="${product.image}" data-imagezoom="true"
														class="img-responsive" alt="">
												</div>
											</li>
										</ul>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- product-page-photo end -->
				<div class="col-lg-5 col-md-5 col-sm-12">
					<div class="product-page-content">
						<div class="pro-page-title">
							<h1>${product.productName}</h1>

						</div>
						<div class="stock-status">
							<p>Giá</p>
						</div>
						<div class="product-page-price">
							<span class="old-price"></span> <span class="pro-price">${product.price}</span>
						</div>
						<div class="product-total-cart">
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
										type="hidden" name="return" value=" " /> <input type="hidden"
										name="cancel_return" value=" " />
								</fieldset>
								<div class="quantity">
									<p style="font-weight: bold;">Số hàng trong kho
										:${product.quantity}</p>
									<br>
								</div>
								<input min="1" type="number" value="1" class="item_quantity" />
								<button type="submit" name="submit" value="Thêm vào giỏ">Mua
									ngay</button>
							</form>
						</div>

						<div class="pro-shor-desc">
							<p>${product.description}</p>
						</div>
						<div class="product-page-select"></div>


					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="product-share-icon"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="product-tab">
						<div>
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Mô tả</a></li>
								<li role="presentation"><a href="#profile"
									aria-controls="profile" role="tab" data-toggle="tab">Bình
										luận</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="product-page-tab-content">
										<p>${product.description}</p>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane" id="profile">
									<div class="product-page-comments">
										<div class="fb-like"
											data-href="https://www.facebook.com/D%E1%BB%A5ng-c%E1%BB%A5-c%C3%A2u-c%C3%A1-Fishing-World-363102004547080/?modal=admin_todo_tour"
											data-layout="standard" data-action="like" data-size="small"
											data-show-faces="true" data-share="true"></div>
										<div class="cleaner h40"></div>
										<div class="fb-comments" style="background-color: white;"
											data-href="https://www.facebook.com/D%E1%BB%A5ng-c%E1%BB%A5-c%C3%A2u-c%C3%A1-Fishing-World-363102004547080/?modal=admin_todo_tour"
											data-width="600" data-numposts="5"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- product-main-area end -->





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
		<jsp:include page="plugin.jsp"></jsp:include>
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
							<h3 class="widget-title">Fising World</h3>
							<ul class="footer-menu">
								<li><i class="fa fa-map-marker"> </i> <strong>Địa
										chỉ</strong> : Linh Trung, Thủ Đức, Hồ Chí Minh, Việt Nam</li>
								<li><i class="fa fa-phone"> </i> <strong>Hot Line</strong>
									: (012) 888 8888</li>
								<li><i class="fa fa-envelope"> </i> <strong>Email</strong>
									: fishingworld@gmail.com</li>
								<li><p>Chuyên cung cấp sỉ và lẻ các loại cần câu, máy
										câu, dây câu, lưỡi, phao, mồi và phụ kiện đi câu chính hãng.</p></li>
							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title">Giấy phép kinh doanh</h3>
							<ul class="footer-menu">
								<li>Giấy chứng nhận đăng ký kinh doanh số: 031xxxxxxx</li>
								<li>Ngày cấp: 30 tháng 3 năm 2019</li>
								<li>Chủ sở hữu: Dụng cụ câu cá Fishing World Co.ltd</li>
								<li><a href="#">Chính sách Bảo vệ thông tin cá nhân</a></li>
								<li><a href="#">Chính sách và qui định</a></li>

							</ul>
						</div>
					</div>
					<!-- footer-widget end -->
					<!-- footer-widget start -->
					<div class="col-lg-3 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title">Facebook Fanpage</h3>
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
							<h3 class="widget-title">Bản đồ</h3>
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
								Copyright © 2019 <a href="" target="_blank">Fishingworld</a> All
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

<!-- Tieu Long Lanh -->
</html>