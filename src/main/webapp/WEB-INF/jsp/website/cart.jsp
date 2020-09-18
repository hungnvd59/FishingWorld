<%@ page pageEncoding="utf-8"%>

<link href="static/css/jquery-ui/jquery-ui.css" rel="stylesheet">

<div class="header">

	<div class="header-two navbar navbar-default">
		<!--header-two-->
		<div class="container">


			<div class="nav navbar-nav navbar-right header-two-right">

				<div class="header-right cart">
					<a href="#"> <span class="glyphicon glyphicon-shopping-cart"
						aria-hidden="true"></span>
					</a>
					<h4>
						<a href="#"> <span id="cartTotal"> 0 VNĐ (0)</span>
						</a>
					</h4>
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
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

</div>
