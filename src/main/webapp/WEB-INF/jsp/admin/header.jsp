<%@ page pageEncoding="utf-8"%>

<header class="main-header">
	<!-- Logo -->
	<a href="admin?user=${user.id}" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b></b></span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Fishing</b>World</span>
	</a>
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				
				<!-- Notifications: style can be found in dropdown.less -->
				
				<!-- Tasks: style can be found in dropdown.less -->
			
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="static/admin/img/admin.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">${user.name}</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="static/admin/img/admin.jpg" class="img-circle"
							alt="User Image">

							<p>${user.name}<small></small>
							</p></li>
						<!-- Menu Body -->
						
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="profileManager?user=${user.id}" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="logout" class="btn btn-default btn-flat">Sign out</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
	</nav>
</header>