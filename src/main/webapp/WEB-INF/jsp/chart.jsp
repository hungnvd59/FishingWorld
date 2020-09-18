<%@page import="org.springframework.ui.ModelMap"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Fishing World Admin</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="static/admin/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="static/admin/css/AdminLTE.min.css">
<link rel="stylesheet" href="static/css/list.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="static/admin/css/skins/_all-skins.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="admin/header.jsp" />
		<jsp:include page="admin/sidebar.jsp" />
		<div class="content-wrapper">
			<div class="col-md-4" style="margin-left: 50px; margin-top: 50px">
				<div id="top_x_div" style="width: 800px; height: 500px;"></div>
			</div>
			<div class="col-md-4"
				style="float: right; margin-top: 50px; margin-right: 50px">
				<h3>Danh sách thống kê</h3>
				<div class="list-type5">
					<ol>
						<li><a href="orderCategory?user=${user.id}">Thống kê số
								đơn hàng theo loại sản phẩm </a></li>
						<li><a href="chartCategory?user=${user.id}">Thống kê số
								sản phẩm theo loại sản phẩm </a></li>

					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery 2.2.0 -->
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script src="static/admin/jQuery/jQuery-2.2.0.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.6 -->
	<script src="static/admin/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="static/admin/morris/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="static/admin/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="static/admin/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="static/admin/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="static/admin/knob/jquery.knob.js"></script>
	<!-- daterangepicker -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
	<script src="static/admin/daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="static/admin/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="static/admin/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="static/admin/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="static/admin/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="static/admin/js/app.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="static/admin/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="static/admin/js/demo.js"></script>

	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawStuff);

	function drawStuff() {
		var data = new google.visualization.arrayToDataTable([
				[ 'Biểu đồ', 'Số lượng' ], 
				<c:forEach var="item" items="${items}">
				["${item.name}",${item.num}],
				</c:forEach> 
				]);

		var options = {
			width : 500,
			legend : {
				position : 'none'
			},
			chart : {
				title : 'Thống kê số sản phẩm theo loại sản phẩm',
				
			},
			axes : {
				x : {
					0 : {
						side : 'top',
						
					}
				// Top x-axis.
				}
			},
			bar : {
				groupWidth : "90%"
			}
		};

		var chart = new google.charts.Bar(document.getElementById('top_x_div'));
		// Convert the Classic options to Material options.
		chart.draw(data, google.charts.Bar.convertOptions(options));
	};
</script>
</body>
</html>