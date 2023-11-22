<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<title>Cafe Slide</title>
<section class="page-home">

	<div>
		<div class="main-content" id="home4">
			<div class="wrap-banner">
				<div class="section banner">
					<div class="tiva-slideshow-wrapper">
						<div id="tiva-slideshow" class="nivoSlider">
							<a href="#"> <img class="img-responsive"
								src="<c:url value="/assets/user/img/home/slider-4.jpg" />"
								title="#caption1" alt="Slideshow image">
							</a> <a href="#"> <img class="img-responsive"
								src="<c:url value="/assets/user/img/home/slider-5.jpg" />"
								title="#caption2" alt="Slideshow image">
							</a> <a href="#"> <img class="img-responsive"
								src="<c:url value="/assets/user/img/home/slider-6.jpg" />"
								title="#caption3" alt="Slideshow image">
							</a>
						</div>
					</div>
				</div>
			</div>

			<!-- main -->

		</div>
		<div id="home4">
			<div class="main-content">
				<div class="wrap-banner">
					<div class="wrap-banner">
						<!-- menu category -->
						<div class="container position"></div>

					</div>

					<div class="container">

						<div class="row">
							<div class="policy-home col-lg-12">
								<div class="row"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- main -->

				<div id="wrapper-site">
					<div id="content-wrapper" class="full-width">
						<div id="main">
							<section class="page-home">

								<!-- banner -->

								<div class="section spacing-10 group-image-special">
									<div class="row">

										<div class="col-lg-6 col-md-6 banner1">
											<div class="effect">
												<a href="#"> <img class="img-fluid width-100"
													src="<c:url value="/assets/user/img/home/Blog3.jpg" />"
													alt="banner-2" title="banner-2">
												</a>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 banner1">
											<div class="effect">
												<a href="#"> <img class="img-fluid width-100"
													src="<c:url value="/assets/user/img/home/Blog9.jpg" />"
													alt="banner-2" title="banner-2">
												</a>
											</div>
										</div>
									</div>
								</div>
								<!--FEATURED PRODUCTS -->

								<div class="featured-product">
									<div class="container">
										<div class="title-tab-content  text-center">
											<div class="title-product justify-content-between">
												<h2>SẢN PHẨM Khuyến mãi</h2>
												<p>Đây là những sản phẩm khuyến mãi mới nhất của chúng
													tôi</p>
											</div>
										</div>
										<c:if test="${ spkm.size() > 0 }">
											<div class="tab-content">
												<c:forEach var="item" items="${ spkm }">
													<div class="item text-center col-20">
														<div
															class="product-miniature js-product-miniature item-one first-item">
															<div class="thumbnail-container">
																<a
																	href="<c:url value="/products/productDetail/${ item.maSP }" />">
																	<img class="img-fluid image-cover"
																	src="<c:url value="/assets/user/upload/${ item.anh }" />"
																	alt="img"> <img class="img-fluid image-secondary"
																	src="<c:url value="/assets/user/upload/${ item.anh }" />"
																	alt="img">
																</a>

															</div>
															<div class="product-description">
																<div class="product-groups">
																	<div class="product-title">
																		<a
																			href="<c:url value="/products/productDetail/${ item.maSP }" /> ">${ item.tenSP }</a>
																	</div>
																	<div class="rating">
																		&nbsp
																		<div class="product-price-and-shipping">
																			<span class="price">
																				<p>
																					<del>
																						<fmt:formatNumber type="number"
																							maxFractionDigits="3" value="${ item.donGia}" />
																					</del>
																					đ
																				</p>
																			</span>

																		</div>

																	</div>
																	<div class="product-group-price">
																		<div class="product-price-and-shipping">
																			<span class="price"><fmt:formatNumber
																					type="number" maxFractionDigits="3"
																					value="${item.donGiaSauKM}" /></span> đ
																		</div>
																	</div>

																</div>
																<div
																	class="product-buttons d-flex justify-content-center">
																	<form
																		action="<c:url value="/addCart/${ item.maSP }" />"
																		method="post" class="formAddToCart" id="my_form">
																		<input hidden type="number" value="1" name="quanty"
																			class="quantity-field input-group form-control">
																		<!-- <a class="add-to-cart" href="#" onclick="document.getElementById('my_form').submit();" 
		                                                                        data-button-action="add-to-cart">
		                                                                        <i class="fa fa-shopping-cart"
		                                                                            aria-hidden="true"></i>
		                                                                    </a> -->


																		<button type="submit" class="add-to-cart">
																			<i class="fa fa-shopping-cart" aria-hidden="true"></i>
																		</button>
																	</form>
																	<!-- <a class="addToWishlist" href="#" data-rel="1" onclick="">
		                                                                    <i class="fa fa-heart" aria-hidden="true"></i>
		                                                                </a> -->
																	<a
																		href="<c:url value="/products/productDetail/${ item.maSP }" />"
																		class="quick-view hidden-sm-down"
																		data-link-action="quickview"> <i class="fa fa-eye"
																		aria-hidden="true"></i>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>

											</div>


										</c:if>

										<!-- <div class="content-showmore text-center has-showmore">
                                                
                                                <a class="btn btn-default novShowMore" href="./product-grid-sidebar-right.html"><span>Tất cả sản phẩm khuyến mãi</span></a>
                                                
                                                <input type="hidden" value="0" class="count_showmore">
                                            </div> -->
									</div>
								</div>

								<div class="featured-product">
									<!-- <hr> -->
									<div class="container">
										<div class="title-tab-content  text-center">
											<div class="title-product justify-content-between">
												<h2>SẢN PHẨM MỚI NHẤT</h2>
												<p>Đây là những sản phẩm mới nhất của chúng tôi</p>
											</div>
										</div>

										<c:if test="${ spkm.size() > 0 }">
											<div class="tab-content">
												<c:forEach var="item" items="${ spmn }">
													<div class="item text-center col-20">
														<div
															class="product-miniature js-product-miniature item-one first-item">
															<div class="thumbnail-container">
																<a
																	href="<c:url value="/products/productDetail/${ item.maSP }" />">
																	<img class="img-fluid image-cover"
																	src="<c:url value="/assets/user/upload/${ item.anh }" />"
																	alt="img"> <img class="img-fluid image-secondary"
																	src="<c:url value="/assets/user/upload/${ item.anh }" />"
																	alt="img">
																</a>

															</div>
															<div class="product-description">
																<div class="product-groups">
																	<div class="product-title">
																		<a
																			href="<c:url value="/products/productDetail/${ item.maSP }" /> ">${ item.tenSP }</a>
																	</div>
																	<div class="rating">
																		&nbsp
																		<c:if test="${ item.donGiaSauKM != item.donGia }">
																			<div class="product-price-and-shipping">
																				<span class="price">
																					<p>
																						<del>
																							<fmt:formatNumber type="number"
																								maxFractionDigits="3" value="${ item.donGia}" />
																						</del>
																						đ
																					</p>
																				</span>

																			</div>
																		</c:if>

																	</div>


																	<div class="product-group-price">
																		<div class="product-price-and-shipping">
																			<span class="price"><fmt:formatNumber
																					type="number" maxFractionDigits="3"
																					value="${item.donGiaSauKM}" /></span> đ
																		</div>
																	</div>




																</div>
																<div
																	class="product-buttons d-flex justify-content-center">
																	<form
																		action="<c:url value="/addCart/${ item.maSP }" />"
																		method="post" class="formAddToCart" id="my_form">

																		<!-- <a class="add-to-cart" href="#" onclick="document.getElementById('my_form').submit();" 
		                                                                        data-button-action="add-to-cart">
		                                                                        <i class="fa fa-shopping-cart"
		                                                                            aria-hidden="true"></i>
		                                                                    </a> -->


																		<button type="submit" class="add-to-cart">
																			<i class="fa fa-shopping-cart" aria-hidden="true"></i>
																		</button>
																	</form>
																	<!-- <a class="addToWishlist" href="#" data-rel="1" onclick="">
		                                                                    <i class="fa fa-heart" aria-hidden="true"></i>
		                                                                </a> -->
																	<a href="<c:url value="/products/productDetail/1" />2"
																		class="quick-view hidden-sm-down"
																		data-link-action="quickview"> <i class="fa fa-eye"
																		aria-hidden="true"></i>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
												<div class="content-showmore text-center has-showmore">

													<a class="btn btn-default novShowMore"
														href="<c:url value="/products" />"><span>Tất cả
															sản phẩm</span></a> <input type="hidden" value="0"
														class="count_showmore">
												</div>

											</div>
										</c:if>
									</div>
								</div>

							</section>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>


</section>