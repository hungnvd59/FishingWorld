<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>Fishing World</title>
<meta name="description" content="Thanh toán">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--//animation-effect-->
<!--start-smooth-scrolling-->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--//end-smooth-scrolling-->

<!-- Font
		============================================ -->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>



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

<!-- jquery-ui CSS
		============================================ -->
<link rel="stylesheet" href="static/assets/css/jquery-ui.css">

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
<body>
	<!-- header -->
	<jsp:include page="website/header.jsp" />
	<!-- header -->


	<!-- breadcrumb-area start -->
	<div class="breadcrumb-area product-breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb">
						<ul>
							<li><a href="home">Trang chủ <i
									class="fa fa-angle-right"></i></a></li>
							<li>Thanh toán</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb-area end -->
	<!--//breadcrumbs-->
	<!--contact-->
	<!-- checkout-area start -->
	<div class="checkout-area">
		<div style="margin-left: 60px">
			<form:form id="orderForm" action="order" modelAttribute="orderForm"
				method="post">
				<div class="col-lg-5 col-md-6">
					<div class="checkbox-form">
						<h3>Thông tin khách hàng</h3>
						<div class="row">

							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Họ tên quý khách<span class="required">*</span></label>
									<form:input path="customerName" placeholder="Họ tên Quý khách" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Số điện thoại<span class="required">*</span></label>
									<form:input path="phoneNumber" placeholder="Số điện thoại" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
									<label>Email<span class="required">*</span></label>
									<form:input path="" placeholder="Số điện thoại" name="mailsend"/>
								</div>
							</div>
						</div>
						<div class="order-notes">
							<div class="checkout-form-list">
								<label>Địa chỉ<span class="required">*</span></label>
								<form:textarea id="checkout-mess" cols="30" rows="10"
									path="address" />
							</div>
						</div>
						<form:input id="orderTotal" type="hidden" path="total" />
						<div class="order-button-payment">
							<input type="submit" value="ĐẶT HÀNG"
								onclick="paypal.minicart.reset(); alert('Đặt hàng thành công, Fishing World sẽ liên hệ sớm nhất với bạn để xác nhận đơn hàng !')" />
							<input id="noProductInCart" type="hidden" name="noProductInCart" />
						</div>
					</div>
				</div>
			</form:form>
		</div>
		<div class="col-lg-6 col-md-6">
			<div class="your-order">
				<h3>Xác nhận đơn hàng</h3>
				<div class="your-order-table table-responsive">
					<table id="cartDetail">
						<tr>
							<th class="product-name">STT</th>
							<th class="product-total">Tên sản phẩm</th>
							<th class="product-name">Giá</th>
							<th class="product-total">Số lượng</th>
						</tr>
					</table>
					<table>
						<tr class="order-total">
							<th>Tổng thanh toán</th>
							<td><strong><span class="amount" id="TotalCart"></span></strong></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-12">
		<p></p>
	</div>

	<div class="col-lg-12">
		<jsp:include page="website/footer.jsp" />
	</div>
	<!-- checkout-area end -->

	<!--search jQuery-->
	<script src="static/js/main.js"></script>
	<!--//search jQuery-->

	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!--Bootstrap core JavaScript
    ================================================== -->
	<!--Placed at the end of the document so the pages load faster -->
	<script src="static/js/bootstrap.js"></script>
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
		var items = paypal.minicart.cart.items(), cartTotal = paypal.minicart.cart
				.total(), productPrice = 0, quantity = 0;
		if (items.length > 0) {
			for (var i = 0; i < items.length; i++) {
				quantity = items[i].get('quantity');
				productPrice = items[i].get('amount');
				document.getElementById("cartDetail").innerHTML += "<tr> <td>"
						+ (i + 1) + "</td> <td>" + items[i].get('item_name')
						+ "</td> <td>" + productPrice + "</td> <td>" + quantity
						+ "</td> </tr>";
				document.getElementById('orderForm').innerHTML += '<input type="hidden" value="'
						+ items[i].get('item_name')
						+ '" name="productName'
						+ (i + 1)
						+ '" />'
						+ '<input type="hidden" value="'
						+ quantity
						+ '" name="productQuantity'
						+ (i + 1)
						+ '" />';
			}
			if (quantity > 0) {
				document.getElementById("cart-box").innerHTML = '<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
			}
			document.getElementById('noProductInCart').value = items.length;
			document.getElementById("cartTotal").innerHTML = cartTotal
					+ " VNĐ (" + quantity + ")";
		} else {
			document.getElementById("cartTotal").innerHTML = "0 VNĐ (0)";
		}
		document.getElementById('TotalCart').innerHTML = cartTotal + ' VNĐ';
		document.getElementById('orderTotal').value = cartTotal;
	};

	paypal.minicart.cart.on('add',
			function() {
				var items = this.items(), quantity = 0, price = 0, total = this
						.total();

				for (var i = 0; i < items.length; i++) {
					quantity += items[i].get('quantity');
					price = items[i].get('amount');
				}
				document.getElementById("cartTotal").innerHTML = total + " VNĐ"
						+ " (" + quantity + ")";
			});

	paypal.minicart.cart.on('remove', function() {
		var items = this.items(), quantity = 0, total = this.total();
		for (var i = 0; i < items.length; i++) {
			quantity += items[i].get('quantity');
		}
		document.getElementById("cartTotal").innerHTML = total + " VNĐ" + " ("
				+ quantity + ")";
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</html>