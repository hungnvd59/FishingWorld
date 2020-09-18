<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<!--breadcrumbs-->
<div class="breadcrumb-area product-breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb">
						<ul>
							<li><a href="home">Trang chủ <i class="fa fa-angle-right"></i></a></li>
							<li>Sản phẩm</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<!--//breadcrumbs-->
<!--products-->
<div class="products">
	<div class="container">
		<div class="col-md-3 rsidebar">
			<div class="rsidebar-top" style="height: 425px;">
				<form action="searchProduct" method="get">
					<div class="slider-left">
						<h4>Lọc với khoảng giá</h4>
						<div id="slider-range"></div>
						<br> <input type="text" id="amount"
							style="border: 0; color: #353F49; text-align: center; padding-left: 10px;" />
						<input type="hidden" id="amountHidden" name="priceRange" />
						<c:if test="${priceValue1 != null}">
							<input id="priceValue1" type="hidden" value="${priceValue1}" />
							<input id="priceValue2" type="hidden" value="${priceValue2}" />
						</c:if>
						<!---->
						<script type='text/javascript'>
							$(window)
									.load(
											function() {
												$("#slider-range")
														.slider(
																{
																	range : true,
																	min : 10000,
																	max : 5000000,
																	step : 50000,
																	values : [
																			10000,
																			5000000],
																	slide : function(
																			event,
																			ui) {
																		$(
																				"#amount")
																				.val(
																						ui.values[0]
																								+ "đ - "
																								+ ui.values[1]
																								+ "đ");
																		$(
																				"#amountHidden")
																				.val(
																						ui.values[0]
																								+ "-"
																								+ ui.values[1]);
																	}
																});
												$("#amount")
														.val(
																$(
																		"#slider-range")
																		.slider(
																				"values",
																				0)
																		+ "đ - "
																		+ $(
																				"#slider-range")
																				.slider(
																						"values",
																						1)
																		+ "đ");
												$("#amountHidden")
														.val(
																$(
																		"#slider-range")
																		.slider(
																				"values",
																				0)
																		+ "-"
																		+ $(
																				"#slider-range")
																				.slider(
																						"values",
																						1));
												var priceValue1 = document
														.getElementById("priceValue1").value;
												var priceValue2 = document
														.getElementById("priceValue2").value;
												alert("Xin chao");
												if (priceValue1 != null
														&& priceValue2 != null) {
													$("#slider-range")
															.slider(
																	"option",
																	"values",
																	[
																			priceValue1,
																			priceValue2 ]);
													$("#amount")
															.val(
																	priceValue1
																			+ "đ - "
																			+ priceValue2
																			+ "đ");
													$("#amountHidden")
															.val(
																	priceValue1
																			+ "-"
																			+ priceValue2);
												}
											});
						</script>

						<!---->
					</div>
					<div class="sidebar-row">
						<h4>Loại sản phẩm</h4>
						<div class="row row1 scroll-pane">

							<c:forEach var="category" items="${categories}">
								<c:choose>
									<c:when test="${category.categoryId == categoryID}">
										<label class="checkbox"><input type="radio"
											checked="checked" value="${category.categoryId}" name="cateID"><i></i>${category.categoryName}</label>
									</c:when>
									<c:otherwise>
										<label class="checkbox"><input type="radio"
											value="${category.categoryId}" name="cateID"><i></i>${category.categoryName}</label>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<center>
								<input
									style="margin: 0 auto; background: #ff5a10; border: none; color: #FFF; width: 100px; height: 40px; border-radius: 10px;"
									type="submit" value="LỌC" />
							</center>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-9 product-model-sec">
			<c:choose>
				<c:when test="${products == null}">
					<h1 style="text-align: center;">Không tìm thấy kết quả phù hợp
						!</h1>
				</c:when>
				<c:otherwise>
					<c:forEach var="product" items="${products}">
						<div style="margin: 10px 8px;"
							class="product-grids simpleCart_shelfItem wow fadeInUp animated"
							data-wow-delay=".5s">
							<div class="new-top">
								<a href="single.html"><img src="${product.image}"
									class="img-responsive" /></a>
								<div class="new-text">
									<ul>
										<li><a
											href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">Xem
												Chi Tiết </a></li>
										<li><input type="number" class="item_quantity" min="1"
											value="1"></li>
										<li>
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="business" value="" /> <input
														type="hidden" name="item_name" value="${product.productName}" />
													<input type="hidden" name="amount" value="${product.price}" />
													<input type="hidden" name="discount_amount" value="" /> <input
														type="hidden" name="currency_code" value="VND" /> <input
														type="hidden" name="item_image" value="images/4.png" /> <input
														type="hidden" name="return" value=" " /> <input
														type="hidden" name="cancel_return" value=" " /> <input
														class="item_quantity" type="submit" name="submit"
														value="Thêm vào giỏ" />
												</fieldset>
											</form>
										</li>
									</ul>
								</div>
							</div>
							<div class="new-bottom" style="text-align: center;">
								<h5>
									<a class="name"
										href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">${product.productName}</a>
								</h5>
								<div class="ofr">
									<p>
										<span class="item_price">${product.price}đ</span>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>

		<div class="clearfix"></div>
	</div>
</div>
<!--//products-->