<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Fishing World | Login</title>
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/css/util.css">
<link rel="stylesheet" type="text/css"
	href="static/assetsLogin/css/main.css">
<!--===============================================================================================-->
<style>
.error {
	color: #ff0000;
}
</style>

</head>

<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="home"> <img
			src="static/assets/img/logo/logofish.png" alt="logo"
			style="width: 120px;">
		</a>

		<!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="home">Fishing
					World</a></li>

		</ul>
	</nav>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(static/assetsLogin/images/bg-01.jpg);">
					<span class="login100-form-title-1"> <spring:message
							code="label.title" />
					</span>
				</div>


				<form:form action="login" method="POST" modelAttribute="admin"
					class="login100-form validate-form">
					<form:input type="hidden" path="id" id="id" />
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100"><spring:message
								code="label.userName" /></span>
						<form:input path="username" id="username" class="input100"
							type="text" name="username" placeholder="Nhập username" />
						<span class="focus-input100"><form:errors path="username"
								cssClass="error" /></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100"> <spring:message
								code="label.password" /></span>
						<form:input path="password" id="password" class="input100"
							type="password" name="pass" placeholder="Nhập password" />
						<span class="focus-input100"><form:errors path="password"
								cssClass="error" /></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">

						<div>
							<a href="forgot" class="txt1"> Quên mật khẩu? </a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" value="login" class="login100-form-btn">
							Đăng nhập</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<br />
	<br />
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('input[type="password"]')
									.after(
											' <input type="checkbox" class="check" /> Hiển thị mật khẩu');
							$('.check')
									.change(
											function() {
												var prev = $(this).prev();
												var value = prev.val();
												var type = prev.attr('type');
												var name = prev.attr('name');
												var id = prev.attr('id');
												var klass = prev.attr('class');
												var new_type = (type == 'password') ? 'text'
														: 'password';
												prev.remove();
												$(this)
														.before(
																'<input type="'+new_type+'" value="' +value+ '" name="' +name+ '" value="' +value+ '"id="' +id+ '" class="' +klass+ '" />');

											});
						})
	</script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/bootstrap/js/popper.js"></script>
	<script src="static/assetsLogin/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="static/assetsLogin/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="static/assetsLogin/js/main.js"></script>
</body>
</html>