<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<section>
	<div>
		<div class="product-cart checkout-cart blog">
			<div class="main-content" id="cart">
				<!-- main -->
				<div id="wrapper-site">
					<!-- breadcrumb -->
					<nav class="breadcrumb-bg">
						<div class="container no-index">
							<div class="breadcrumb">
								<ol>
									<li><a href="#"> <span>Trang chủ</span>
									</a></li>
									<li><a href="#"> <span>Giỏ hàng</span>
									</a></li>
								</ol>
							</div>
						</div>
					</nav>
					<div class="container">
						<div class="row">
							<div id="content-wrapper"
								class="col-xs-12 col-sm-12 col-md-12 col-lg-12 onecol">
								<section id="main">
									<div class="cart-grid row">
										<div class="col-md-9 col-xs-12 check-info">
											<h1 class="title-page">Giỏ hàng</h1>

											<div class="cart-container">
												<div class="cart-overview js-cart">
													<c:if test="${ Cart.size() == 0}">
														<h1>Giỏ hàng bạn đang rỗng</h1>
													</c:if>
													<ul class="cart-items">
														<c:forEach var="item" items="${ Cart }">
															<li class="cart-item">
																<div
																	class="product-line-grid row justify-content-between">
																	<!--  product left content: image-->
																	<div class="product-line-grid-left col-md-2">
																		<span class="product-image media-middle"> <a
																			href="<c:url value="/products/productDetail/${ item.value.product.maSP }"/>">
																				<img class="img-fluid"
																				src="<c:url value="/assets/user/upload/${ item.value.product.anh }"/>"
																				alt="Organic Strawberry Fruits">
																		</a>
																		</span>
																	</div>
																	<div class="product-line-grid-body col-md-5">
																		<div class="product-line-info">
																			<a class="label"
																				href="<c:url value="/products/productDetail/${ item.value.product.maSP }"/>"
																				data-id_customization="0">${ item.value.product.tenSP }</a>
																		</div>
																		<div class="product-line-info product-price">
																			<span class="value"><fmt:formatNumber
																					type="number" maxFractionDigits="3"
																					value="${ item.value.product.donGiaSauKM }" /></span> đ
																		</div>

																	</div>
																	<div
																		class="product-line-grid-right text-center product-line-actions col-md-5">
																		<div class="row">

																			<div class="col-md-4 col qty input-group">
																				<div class="label">Số lượng:</div>
																				<div class="quantity">
																					<style>
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
}
</style>
																					<form action="/editCart" method="post"
																						id="updateCart">


																						<input type="number" step="1" max="10" min="1"
																							id="quanty-cart-${ item.key }"
																							data-id="${ item.key }"
																							class="quantity-field input-group form-control edit-card"
																							value="${ item.value.quanty }"> <span
																							class="input-group-btn-vertical"> <!-- <input type="button" value="+" 
	                                                                                        class="button-plus btn btn-touchspin js-touchspin bootstrap-touchspin-up"
	                                                                                        data-field="quantity">
	                                                                                    <input type="button" value="-"
	                                                                                        class="button-minus btn btn-touchspin js-touchspin bootstrap-touchspin-down"
	                                                                                        data-field="quantity"> -->
																						</span>
																					</form>
																				</div>

																			</div>

																			<div class="col-md-6 col price">
																				<div class="label">Tiền:</div>
																				<div class="product-price total">
																					<span><fmt:formatNumber type="number"
																							maxFractionDigits="3"
																							value="${ item.value.totalPrice }" /></span> đ
																				</div>
																			</div>
																			<div
																				class="col-md-2 col text-xs-right align-self-end">
																				<div class="cart-line-product-actions ">
																					<a class="remove-from-cart" rel="nofollow"
																						href="<c:url value="/deleteCart/${ item.value.product.maSP }"/>"
																						data-link-action="delete-from-cart"
																						data-id-product="1"> <i class="fa fa-trash-o"
																						aria-hidden="true"></i>
																					</a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</li>


														</c:forEach>

													</ul>
												</div>
											</div>
											<div>
												<a href="<c:url value="/products"/>"
													class="continue btn btn-primary pull-xs-right"> Tiếp
													tục mua hàng </a> <a href="/shoppingCart/checkout"
													class="continue btn btn-primary pull-xs-right"> Thanh
													toán </a>
											</div>

										</div>
										<div class="cart-grid-right col-xs-12 col-lg-3">
											<div class="cart-summary">
												<div class="cart-detailed-totals">
													<div class="cart-summary-products">
														<div class="summary-label">Có ${ totalQuanty } sản
															phẩm trong giỏ hàng của bạn</div>
													</div>
													<div class="cart-summary-line" id="cart-subtotal-products">
														<span class="label js-subtotal"> Tổng tiền: </span> <span
															class="value"><strong><fmt:formatNumber
																	type="number" maxFractionDigits="3"
																	value="${ totalPrice }" /></strong></span> đ
													</div>
													<!-- <div class="cart-summary-line" id="cart-subtotal-shipping">
														<span class="label"> Phí vận chuyển: </span> <span
															class="value">50.000,00 đ</span>
														<div>
															<small class="value"></small>
														</div>
													</div>
													<div class="cart-summary-line cart-total">
														<span class="label">Tổng:</span> <span class="value">109.500,00</span>
														đ
													</div> -->
												</div>
											</div>
											<div id="block-reassurance">
												<ul>
													<li>
														<div class="block-reassurance-item">
															
															<span>Chính sách bảo mật (Thông tin cá nhân của
																bạn sẻ được bảo đảm an toàn)</span>
														</div>
													</li>
													<li>
														<div class="block-reassurance-item">
															
															<span>Chính sách giao hàng (Thanh toán khi nhận
																được sản phẩm và kiểm tra)</span>
														</div>
													</li>
													<li>
														<div class="block-reassurance-item">
															
															<span>Chính sách hoàn tiền (đảm bảo sự hài lòng
																của khách hàng)</span>
														</div>

													</li>
												</ul>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<content tag="script"> <script>
		$(".edit-card").on("change", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "edit" + "Cart/" + id + "?newQuanty=" + quanty;
		})
	</script> </content>

</section>
