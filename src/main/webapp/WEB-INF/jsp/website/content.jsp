<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--new-->
<!--//new-->
<!--gallery-->
<div class="gallery">
	<div class="container">
		<div class="gallery-info">
			<c:forEach var="product" varStatus="status" items="${mostViews}">
				<div class="col-md-3 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
					<a href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">
						<img src="${product.image}" class="img-responsive" />
					</a>
					<div class="gallery-text simpleCart_shelfItem" style="padding-top: 10px;">
						<h5>
							<a class="name" href="productDetail?cateID=${product.category.categoryId}&productID=${product.productId}">${product.productName}</a>
						</h5>
						<p>
							<span class="item_price">${product.price}đ</span>
						</p>
						<h4 class="sizes"></h4>
						<ul>
							<li>
								<a href="#">
									<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
								</a>
							</li>
							<li>
								<a class="item_add" href="#">
									<span class="glyphicon glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="glyphicon glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</c:forEach>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--//gallery-->