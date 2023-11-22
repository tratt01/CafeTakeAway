<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Sản phẩm</title>
<section>

	<div>
		<div id="product-sidebar-left" class="product-grid-sidebar-left">
			<div class="main-content">
				<div id="wrapper-site">
					<div id="content-wrapper" class="full-width">
						<div id="main">
							<div class="page-home">
								<!-- breadcrumb -->
								<nav class="breadcrumb-bg">
									<div class="container no-index">
										<div class="breadcrumb">
											<ol>
												<li><a href="/assets/user/home"> <span>Trang
															chủ</span>
												</a></li>
												<li><a href="#"> <span>Sản phẩm</span>
												</a></li>

											</ol>
										</div>
									</div>
								</nav>

								<div class="container" id="product-detail">
									<div class="content">
										<div class="row">
											<div
												class="sidebar-3 sidebar-collection col-lg-3 col-md-4 col-sm-4">

												<!-- category menu -->
												<div class="sidebar-block">
													<div class="title-block">Danh mục</div>

													<div class="block-content">
														<c:forEach var="loaisp" items="${ loaisp }">
															<div class="cateTitle hasSubCategory open level1">
																<a class="cateItem"
																	href="<c:url value="/category/${ loaisp.maLoai }" />">${ loaisp.tenLoai }</a>

															</div>
														</c:forEach>


													</div>
												</div>
												
												
											</div>
											<div class="col-sm-8 col-lg-9 col-md-8 product-container">
												<h1>Tất cả sản phẩm</h1>
												<div class="js-product-list-top firt nav-top">
													<div class="d-flex justify-content-around row">
														<div class="col col-xs-12">
															<ul class="nav nav-tabs">
																<li><a href="#grid" data-toggle="tab"
																	class="active show fa fa-th-large"></a></li>
																<!-- <li>
                                                                    <a href="#list" data-toggle="tab" class="fa fa-list-ul"></a>
                                                                </li> -->
															</ul>
															<div class="hidden-sm-down total-products">
																<p>Có ${ totalData } sản phẩm tất cả</p>
															</div>
														</div>
														<div class="col col-xs-12">
															<div
																class="d-flex sort-by-row justify-content-lg-end justify-content-md-end">

																<div class="products-sort-order dropdown">

																	<div class="dropdown show">
																		<a class="btn btn-secondary dropdown-toggle" href="#"
																			role="button" id="dropdownMenuLink"
																			data-toggle="dropdown" aria-haspopup="true"
																			aria-expanded="false">Sắp xếp</a>

																		<div class="dropdown-menu"
																			aria-labelledby="dropdownMenuLink">
																			<a class="dropdown-item"
																				href="/assets/user/products/page/1?sortField=productName&amp;sortDir=asc">Tên,
																				từ A đến Z</a> <a class="dropdown-item"
																				href="/assets/user/products/page/1?sortField=productName&amp;sortDir=desc">Tên,
																				từ Z đến A</a> <a class="dropdown-item"
																				href="/assets/user/products/page/1?sortField=unitPrice&amp;sortDir=asc">Giá,
																				từ thấp đến cao</a> <a class="dropdown-item"
																				href="/assets/user/products/page/1?sortField=unitPrice&amp;sortDir=desc">Giá,
																				từ cao đến thấp</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-content product-items">
													<div id="grid" class="related tab-pane fade in active show">
														<div class="row">

															<c:if test="${ SanPhamByPage.size() > 0 }">
																<c:forEach var="item" items="${ SanPhamByPage }">
																	<div class="item text-center col-md-4">
																		<div
																			class="product-miniature js-product-miniature item-one first-item">
																			<div class="thumbnail-container border">
																				<a
																					href="<c:url value="/products/productDetail/${ item.maSP }"/>">
																					<img class="img-fluid image-cover"
																					src="<c:url value="/assets/user/upload/${ item.anh }"/>"
																					alt="img"> <img
																					class="img-fluid image-secondary"
																					src="<c:url value="/assets/user/upload/${ item.anh }"/>"
																					alt="img">
																				</a>
																				<div class="highlighted-informations">
																					<!-- <div class="variant-links">
		                                                                                <a href="#" class="color beige" title="Beige"></a>
		                                                                                <a href="#" class="color orange" title="Orange"></a>
		                                                                                <a href="#" class="color green" title="Green"></a>
		                                                                            </div> -->
																				</div>
																			</div>
																			<div class="product-description">
																				<div class="product-groups">
																					<div class="product-title">
																						<a
																							href="/assets/user/products/productDetail/${ item.maSP }"
																							style="color: black !important; font-size: 15px; font-weight: 500;">${ item.tenSP }</a>
																					</div>
																					<div class="rating">
																						&nbsp <span class="price"> <c:if
																								test="${ item.donGia != item.donGiaSauKM }">
																								<del>${ item.donGiaSauKM }</del> đ
																						</c:if>
																						</span>
																					</div>
																					<div class="product-group-price">
																						<div class="product-price-and-shipping">
																							<span class="price"> ${ item.donGia } </span> đ
																						</div>
																					</div>
																				</div>
																				<div
																					class="product-buttons d-flex justify-content-center">
																					<!-- <form action="#" method="post"
	                                                                                class="formAddToCart">
	                                                                                <input type="hidden" name="id_product"
	                                                                                    value="1">
	                                                                                <a class="add-to-cart" href="#"
	                                                                                    data-button-action="add-to-cart">
	                                                                                    <i class="fa fa-shopping-cart"
	                                                                                        aria-hidden="true"></i>
	                                                                                </a>
	                                                                            </form> -->
																					<form
																						action="<c:url value="/addCart/${ item.maSP }"/>"
																						method="get" class="formAddToCart" id="my_form">
																						<input hidden type="number" value="1"
																							name="quanty"
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
																					<a href="/products/productDetail/${ item.maSP }"
																						class="quick-view hidden-sm-down"
																						data-link-action="quickview"> <i
																						class="fa fa-eye" aria-hidden="true"></i>
																					</a>
																				</div>
																			</div>
																		</div>
																	</div>
																</c:forEach>

															</c:if>
														</div>
													</div>

												</div>

												<!-- pagination -->
												<div class="pagination">
													<div class="js-product-list-top ">
														<div class="d-flex justify-content-around row">
															<div class="showing col col-xs-12">
																<span>Đang hiển thị 1 trong ${ page.totalPage }
																	trang</span>

															</div>
															<div class="page-list col col-xs-12">
																<ul>

																	<c:forEach var="item" begin="1"
																		end="${ page.totalPage }" varStatus="loop">


																		<c:if test="${ loop.index == page.currentPage }">
																			<li><span class="disabled js-search-link">${ loop.index }</span></li>
																		</c:if>

																		<c:if test="${ loop.index != page.currentPage }">
																			<li><a class="disabled js-search-link"
																				href="<c:url value="/products?page=${ loop.index }"/>">${ loop.index }</a></li>
																		</c:if>
																	</c:forEach>

																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- end col-md-9-1 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="back-to-top">
		<a href="#"> <i class="fa fa-long-arrow-up"></i>
		</a>
	</div>

	<!-- menu mobie left -->
	<div class="mobile-top-menu d-md-none">
		<button type="button" class="close" aria-label="Close">
			<i class="zmdi zmdi-close"></i>
		</button>
		<div class="tiva-verticalmenu block" data-count_showmore="17">
			<div class="box-content block-content">
				<div class="verticalmenu" role="navigation">
					<ul class="menu level1">
						<li class="item  parent"><a href="#" class="hasicon"
							title="SIDE TABLE"> Đồng hồ</a></li>
						<li class="item  parent"><a href="#" class="hasicon"
							title="SIDE TABLE"> Tủ gỗ</a></li>
						<li class="item  parent"><a href="#" class="hasicon"
							title="SIDE TABLE"> Ghế</a></li>
						<li class="item  parent"><a href="#" class="hasicon"
							title="SIDE TABLE"> Bàn ăn</a></li>
						<li class="item  parent"><a href="#" class="hasicon"
							title="SIDE TABLE"> Giường</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>


</section>