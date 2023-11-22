<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<header>
	<!-- header left mobie -->
	<div class="header-mobile d-md-none">
		<div
			class="mobile hidden-md-up text-xs-center d-flex align-items-center justify-content-around">

			<!-- menu left -->
			<div id="mobile_mainmenu" class="item-mobile-top">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</div>

			<!-- logo -->
			<div class="mobile-logo">
				<a> <img class="logo-mobile img-fluid"
					src="<c:url value="/assets/user/img/home/logo-mobie.png" />"
					alt="Prestashop_Furnitica">
				</a>
			</div>
		</div>

		<!-- search -->
		<div id="mobile_search" class="d-flex">
			<div id="mobile_search_content">
				<form method="get" action="#">
					<input type="text" name="s" value=""
						placeholder="Tìm kiếm sản phẩm">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>

			<div class="desktop_cart">
				<div class="blockcart block-cart cart-preview tiva-toggle">
					<div class="header-cart tiva-toggle-btn">
						<span class="cart-products-count">${ totalQuanty }</span> <i
							class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
					<div class="dropdown-content">
						<div class="cart-content">
							<table>
								<tbody>
									<tr>
										<td class="product-image"><a href="product-detail.html">
												<img src="<c:url value="/assets/user/img/product/5.jpg" />"
												alt="Product">
										</a></td>
										<td>
											<div class="product-name">
												<a>Organic Strawberry Fruits</a>
											</div>
											<div>
												2 x <span class="product-price">£28.98</span>
											</div>
										</td>
										<td class="action"><a class="remove" href="#"> <i
												class="fa fa-trash-o" aria-hidden="true"></i>
										</a></td>
									</tr>
									<tr class="total">
										<td colspan="2">Tổng tiền:</td>
										<td>£92.96</td>
									</tr>

									<tr>
										<td colspan="3" class="d-flex justify-content-center">
											<div class="cart-button">
												<a href="product-cart.html" title="View Cart">Giỏ hàng</a> <a
													href="product-checkout.html" title="Checkout">Thanh
													toán</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- header desktop -->
	<div class="header-top d-xs-none position-static">
		<div class="container">
			<div class="row">
				<!-- logo -->
				<div class="col-sm-2 col-md-2 d-flex align-items-center">
					<div id="logo">
						<a href="<c:url value="/home" />"> <img class="img-fluid"
							src="<c:url value="/assets/user/img/home/c19.png" />" alt="logo">
						</a>
					</div>
				</div>

				<!-- menu -->
				<div
					class="main-menu col-sm-4 col-md-5 align-items-center justify-content-center navbar-expand-md">
					<div class="menu navbar collapse navbar-collapse">
						<ul class="menu-top navbar-nav">
							<li class="nav-link"><a href="<c:url value="/home" />"
								class="parent">Trang chủ</a></li>

							<li><a href="<c:url value="/products" />" class="parent">Sản
									phẩm</a>
								<div class="dropdown-menu">
									<ul>
										<c:forEach var="t" items="${ loaisp }">
											<li class="item"><a
												href="<c:url value="/category/${ t.maLoai }" />">${ t.tenLoai }</a></li>
										</c:forEach>
									</ul>
								</div></li>
							<li><a href="<c:url value="/aboutUs" />" class="parent">Giới
									thiệu</a></li>
							<li><a href="<c:url value="/feedbacks" />" class="parent">Phản
									hồi</a></li>
						</ul>
					</div>
				</div>

				<!-- search-->
				<div id="search_widget"
					class="col-sm-6 col-md-5 align-items-center justify-content-end d-flex">
					<form method="get"
						action="<c:url value="/assets/user/products/page/1" />">
						<input type="text" value="" placeholder="Tìm kiếm sản phẩm"
							class="ui-autocomplete-input" autocomplete="off" name="keyword">
						<input class="form-control" placeholder="Tìm kiếm" type="hidden"
							style="width: 60%; display: block;" name="sortField"
							value="productId"> <input class="form-control"
							placeholder="Tìm kiếm" type="hidden"
							style="width: 60%; display: block;" name="sortDir" value="desc">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>

					<!-- account  -->
					<div id="block_myaccount_infos" class="hidden-sm-down dropdown">
						<div class="myaccount-title">
							<a href="#acount" data-toggle="collapse" class="acount"> <i
								class="fa fa-user" aria-hidden="true"></i> <span>Tài
									khoản</span> <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>

						</div>
						<div id="acount" class="collapse">
							<div class="account-list-content">

								<div>
									<a class="login" href="<c:url value="/login" />" rel="nofollow"
										title="Log in to your customer account"> <i
										class="fa fa-sign-in"></i> <span>Đăng nhập </span>
									</a>
								</div>


							</div>
						</div>
					</div>
					<div class="desktop_cart">
						<div class="blockcart block-cart cart-preview tiva-toggle">
							<div class="header-cart tiva-toggle-btn">
								<span class="cart-products-count">
									${ totalQuanty + 0 }
								</span> <i
									class="fa fa-shopping-cart" aria-hidden="true"></i>
							</div>
							<div class="dropdown-content">
								<div class="cart-content">
									<c:if test="${ Cart.size() > 0 }">
										<table>
											<tbody>
												<c:forEach var="item" items="${ Cart }">
													<tr>
														<td class="product-image"><a
															href="<c:url value="/products/productDetail/${ item.value.product.maSP }"/>">
																<img
																src="<c:url value="/assets/user/upload/${ item.value.product.anh }"/>"
																alt="Product">
														</a></td>
														<td>
															<div class="product-name">
																<a
																	href="<c:url value="/products/productDetail/${ item.value.product.maSP }"/>">${ item.value.product.tenSP }</a>
															</div>
															<div>
																<span>${ item.value.quanty }</span> x <span class="product-price"><fmt:formatNumber
																		type="number" maxFractionDigits="3"
																		value="${ item.value.product.donGiaSauKM }" /></span> đ
															</div>
														</td>
														<td class="action"><a class="remove"
															href="<c:url value="/deleteCart/${ item.value.product.maSP }"/>">
																<i class="fa fa-trash-o" aria-hidden="true"></i>
														</a></td>
													</tr>
	
	
												</c:forEach>
	
	
												<tr class="total">
													<td colspan="2">Tổng tiền:</td>
													<td><span><fmt:formatNumber type="number"
																maxFractionDigits="3" value="${ totalPrice }" /></span> đ</td>
												</tr>
	
												<tr>
													<td colspan="3" class="d-flex justify-content-center">
														<div class="cart-button">
															<a href="<c:url value="/shoppingCart"/>" title="View Cart">Xem
																Giỏ hàng</a> <a
																href="<c:url value="/shoppingCart/checkout"/>"
																title="Checkout">Thanh toán</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
								
									</c:if>
									
									<c:if test="${ Cart.size() == 0 || Cart == null}">
										<div>
                                            Không có sản phẩm trong giỏ hàng của bạn
                                        </div>
									</c:if>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
