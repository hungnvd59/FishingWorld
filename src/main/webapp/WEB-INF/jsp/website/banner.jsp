<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<script src="static/js/jssor.slider-24.1.5.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	jssor_1_slider_init = function() {

		var jssor_1_SlideoTransitions = [ [ {
			b : 900,
			d : 2000,
			x : -379,
			e : {
				x : 7
			}
		} ], [ {
			b : 900,
			d : 2000,
			x : -379,
			e : {
				x : 7
			}
		} ], [ {
			b : -1,
			d : 1,
			o : -1,
			sX : 2,
			sY : 2
		}, {
			b : 0,
			d : 900,
			x : -171,
			y : -341,
			o : 1,
			sX : -2,
			sY : -2,
			e : {
				x : 3,
				y : 3,
				sX : 3,
				sY : 3
			}
		}, {
			b : 900,
			d : 1600,
			x : -283,
			o : -1,
			e : {
				x : 16
			}
		} ] ];

		var jssor_1_options = {
			$AutoPlay : 1,
			$SlideDuration : 800,
			$SlideEasing : $Jease$.$OutQuint,
			$CaptionSliderOptions : {
				$Class : $JssorCaptionSlideo$,
				$Transitions : jssor_1_SlideoTransitions
			},
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$BulletNavigatorOptions : {
				$Class : $JssorBulletNavigator$
			}
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		/*responsive code begin*/
		/*remove responsive code if you don't want the slider scales while window resizing*/
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 1920);
				jssor_1_slider.$ScaleWidth(refSize);
			} else {
				window.setTimeout(ScaleSlider, 30);
			}
		}
		ScaleSlider();
		$Jssor$.$AddEvent(window, "load", ScaleSlider);
		$Jssor$.$AddEvent(window, "resize", ScaleSlider);
		$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		/*responsive code end*/
	};
</script>
<style>
/* jssor slider bullet navigator skin 05 css */
/*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
.jssorb05 {
	position: absolute;
}

.jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
	position: absolute;
	/* size of bullet elment */
	width: 30px;
	height: 30px;
	background: url('static/images/slider/b05.png') no-repeat;
	overflow: hidden;
	cursor: pointer;
}

.jssorb05 div {
	background-position: -7px -7px;
}

.jssorb05 div:hover, .jssorb05 .av:hover {
	background-position: -37px -7px;
}

.jssorb05 .av {
	background-position: -67px -7px;
}

.jssorb05 .dn, .jssorb05 .dn:hover {
	background-position: -97px -7px;
}

.jssora031 {
	display: block;
	position: absolute;
	cursor: pointer;
}

.jssora031 .a {
	fill: #fff;
}

.jssora031:hover {
	opacity: .8;
}

.jssora031.jssora031dn {
	opacity: .5;
}

.jssora031.jssora031ds {
	opacity: .3;
	pointer-events: none;
}
</style>


<c:forEach var="category" items="${categories}">
	<a href="searchProduct?cateID=${category.categoryId}">
		${category.categoryName}
	</a>
</c:forEach>

<div class="clearfix"></div>

<script type="text/javascript">
	jssor_1_slider_init();
</script>
<div class="clearfix"></div>
