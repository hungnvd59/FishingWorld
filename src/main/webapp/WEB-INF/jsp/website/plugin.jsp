<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
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

	<div id="fb-root"></div>
	<script>
		$(document)
				.ready(function() {
					var raido = $(".wrap").attr("data-toggle");
					if (raido == 1) {
						$(".vnk-tuvan").css("display", "none");
						$(".x").click(function() {
							$(".wrap").slideToggle();
							$(".vnk-tuvan").slideToggle();
						});
						$(".vnk-tuvan").click(function() {
							$(".wrap").slideToggle();
							$(this).slideToggle();
						});
					} else {
						$(".wrap").css("display", "none");
						$(".x").click(function() {
							$(".wrap").slideToggle();
							$(".vnk-tuvan").slideToggle();
						});
						$(".vnk-tuvan").click(function() {
							$(".wrap").slideToggle();
							$(this).slideToggle();
						});
					}
				})
				(
						function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0];
							if (d.getElementById(id))
								return;
							js = d.createElement(s);
							js.id = id;
							js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&&appId=126586364523772";
							fjs.parentNode.insertBefore(js, fjs);
						}(document, "script", "facebook-jssdk"));
	</script>
	<style>
.wrap {
	position: fixed;
	width: 300px;
	height: 400px;
	z-index: 9999999;
	right: 0px;
	bottom: 0px;
}

.x {
	font-family: arial, helvetica;
	background: rgba(78, 86, 101, 0.8) none repeat scroll 0 0;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	position: absolute;
	right: 0;
	text-align: center;
	top: -19px;
	width: 25px;
	z-index: 99999999;
}

.x:hover {
	cursor: pointer;
}

.pxem {
	text-align: left;
	height: 20px;
	margin-bottom: 0;
	margin-top: 0;
	background: #34495E;
	width: 100%;
	bottom: 0;
	display: block;
	left: 0px;
	position: absolute;
	z-index: 999999999;
	border-left: 1px solid #fff;
}

.pxem a.axem {
	color: #fff;
	font-family: arial, helvetica;
	font-size: 12px;
	line-height: 23px;
	padding-left: 5px;
	text-decoration: none;
}

.pxem a.axem:hover {
	text-decoration: underline;
}

.alogo {
	position: absolute;
	bottom: 0;
	right: 0px;
	z-index: 999999999999;
	width: 75px;
	height: 20px;
	display: inline-block;
	background: #34495E;
	border-left: 2px solid #2c3e50;
	padding-right: 0px;
	padding-left: 5px
}

.vnk-tuvan {
	position: fixed;
	width: 300px;
	background: #34495E;
	z-index: 99999999;
	right: 0px;
	bottom: 0px;
	border-style: solid solid none;
	border-width: 1px 1px 0;
	border-color: #2c3e50
}

.vnk-tuvan p {
	color: #fff;
	font-size: 15px;
	margin: 0;
	padding: 0 13px;
	text-align: left;
}

.vnk-tuvan p a {
	color: #fff;
	font-size: 15px;
	padding: 5px 0px 7px;
	margin: 0;
	display: inline-block;
	font-family: arial, helvetica;
	text-decoration: none;
}

.vnk-tuvan p a:hover {
	text-decoration: underline;
	cursor: pointer;
}

.vnk-tuvan p img {
	float: right;
	margin-top: 10px;
}
</style>
	<div data-toggle="1" class="wrap"
		style="position: fixed; width: 280px; height: 320px; margin-right: 80px;">
		<span class="x" style=""><strong>X</strong></span>
		<div class="fb-page" data-adapt-container-width="true"
			data-height="320" data-hide-cover="false"
			data-href=https://www.facebook.com/D%E1%BB%A5ng-c%E1%BB%A5-c%C3%A2u-c%C3%A1-Fishing-World-363102004547080/?modal=admin_todo_tour
			data-show-facepile="true" data-show-posts="false"
			data-small-header="false" data-tabs="messages" data-width="280"
			style="position: relative; z-index: 9999999; right: 0px; bottom: 21px; border-left: 1px solid #fff; border-top: 1px solid #fff;"></div>

	</div>
	<div class="vnk-tuvan" style="width: 278px;">
		<p style="text-align: center;">
			<a style=""> <strong>Bạn cần tư vấn ?</strong></a>
		</p>
	</div>
</body>
</html>