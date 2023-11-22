<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<section>
	<div>
		<div id="product-detail">
			<div class="main-content">
				<div id="wrapper-site">
					<div id="content-wrapper">
						<div id="main">
							<div class="page-home">

								<!-- breadcrumb -->
								<nav class="breadcrumb-bg">
									<div class="container no-index">
										<div class="breadcrumb">
											<ol>
												<li><a href="<c:url value="/assets/user/home"/> "> <span>Trang chủ</span>
												</a></li>
												<li><a href="#"> <span>Sản phẩm</span>
												</a></li>

											</ol>
										</div>
									</div>
								</nav>
								<div class="container">
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
											<div class="col-sm-8 col-lg-9 col-md-9">
												<div class="main-product-detail">
												
													<h2>${ sanpham.tenSP }</h2>
													<div class="product-single row">
														<div class="product-detail col-xs-12 col-md-5 col-sm-5">
															<div class="page-content" id="content">
																<div class="images-container">
																	<div class="js-qv-mask mask tab-content border">
																		<div id="item1" class="tab-pane fade active in show">
																			<img src="<c:url value="/assets/user/upload/${ sanpham.anh }"/> " alt="img">
																		</div>
																		<div id="item2" class="tab-pane fade">
																			<img src="/assets/user/img/product/1.jpg" alt="img">
																		</div>
																		<div id="item3" class="tab-pane fade">
																			<img src="/assets/user/img/product/1.jpg" alt="img">
																		</div>
																		<div id="item4" class="tab-pane fade">
																			<img src="/assets/user/img/product/1.jpg" alt="img">
																		</div>
																		<!-- <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
                                                                            <i class="fa fa-expand"></i>
                                                                        </div> -->
																	</div>
																	<!-- <ul class="product-tab nav nav-tabs d-flex">
                                                                        <li class="active col">
                                                                            <a href="#item1" data-toggle="tab" aria-expanded="true" class="active show">
                                                                                <img src="/assets/user/img/product/1.jpg" alt="img">
                                                                            </a>
                                                                        </li>
                                                                        <li class="col">
                                                                            <a href="#item2" data-toggle="tab">
                                                                                <img src="/assets/user/img/product/2.jpg" alt="img">
                                                                            </a>
                                                                        </li>
                                                                        <li class="col">
                                                                            <a href="#item3" data-toggle="tab">
                                                                                <img src="/assets/user/img/product/3.jpg" alt="img">
                                                                            </a>
                                                                        </li>
                                                                        <li class="col">
                                                                            <a href="#item4" data-toggle="tab">
                                                                                <img src="/assets/user/img/product/4.jpg" alt="img">
                                                                            </a>
                                                                        </li>
                                                                    </ul> -->

																</div>
															</div>
														</div>
														<div class="product-info col-xs-12 col-md-7 col-sm-7">
															<div class="detail-description">
																<div class="price-del has-border">
																	<span class="price"><fmt:formatNumber type = "number" maxFractionDigits  = "3" value = "${sanpham.donGiaSauKM}" /> </span> đ 
																	<span class="float-right"> <span class="availb">Tồn
																			kho: </span> <span class="check">50</span>
																	</span>
																</div>
																<!-- <p class="description">Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum
                                                                    auctor, nisi elit consequat etiam non auctor.</p> -->

																<div class="has-border cart-area">
																	<div class="product-quantity">
																		<div class="qty">
																			<div class="input-group">
																				<form action="<c:url value="/addCart/${ sanpham.maSP }"/>"
																					method="get" class="formAddToCart edit-card" id="my_form">


																					<div class="quantity">
																						<span class="control-label">Số lượng : </span>

																						<style>
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
}
</style>

																						<input type="number" step="1" max="10" value="1"
																							min="1" name="quanty"
																							class="quantity-field input-group form-control">
																						<!-- <input type="hidden" name="productId" value="13"> -->
																						<span class="input-group-btn-vertical"> <input
																							type="button" value="+"
																							class="button-plus btn btn-touchspin js-touchspin bootstrap-touchspin-up"
																							data-field="quanty"> <input
																							type="button" value="-"
																							class="button-minus btn btn-touchspin js-touchspin bootstrap-touchspin-down"
																							data-field="quanty">

																						</span>
																					</div>
																					<span class="add"> <!-- <button
                                                                                        class="btn btn-primary add-to-cart add-item"
                                                                                        data-button-action="add-to-cart"
                                                                                        type="submit">
                                                                                        <i class="fa fa-shopping-cart"
                                                                                            aria-hidden="true"></i>
                                                                                        <span>Add to cart</span>
                                                                                    </button> -->
																						<button type="submit"
																							class="btn btn-primary add-to-cart add-item"
																							data-button-action="add-to-cart">
																							<i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Add
																								to cart</span>
																						</button> <!-- <a class="addToWishlist" href="#">
                                                                                        <i class="fa fa-heart" aria-hidden="true"></i>
                                                                                    </a> -->
																					</span>
																				</form>
																			</div>
																		</div>
																	</div>
																	<div class="clearfix"></div>
																	<p class="product-minimal-quantity"></p>
																</div>
																<!-- <div class="d-flex2 has-border">
                                                                    <div class="btn-group">
                                                                        <a href="#">
                                                                            <i class="zmdi zmdi-share"></i>
                                                                            <span>Share</span>
                                                                        </a>
                                                                        <a href="#" class="email">
                                                                            <i class="fa fa-envelope" aria-hidden="true"></i>
                                                                            <span>SEN TO A FRIEND</span>
                                                                        </a>
                                                                        <a href="#" class="print">
                                                                            <i class="zmdi zmdi-print"></i>
                                                                            <span>Print</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="rating-comment has-border d-flex">
                                                                    <div class="review-description d-flex">
                                                                        <span>REVIEW :</span>
                                                                        <div class="rating">
                                                                            <div class="star-content">
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                                <div class="star"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="read after-has-border">
                                                                        <a href="#review">
                                                                            <i class="fa fa-commenting-o color" aria-hidden="true"></i>
                                                                            <span>READ REVIEWS (3)</span>
                                                                        </a>
                                                                    </div>
                                                                    <div class="apen after-has-border">
                                                                        <a href="#review">
                                                                            <i class="fa fa-pencil color" aria-hidden="true"></i>
                                                                            <span>WRITE A REVIEW</span>
                                                                        </a>
                                                                    </div>
                                                                </div> -->
																<div class="content has-border">
																	<p>
																		Mã sản phẩm : <span class="content2">${ sanpham.maSP }</span>
																	</p>
																	<p>
																		Danh mục : <span class="content2">${ tenloai.tenLoai }</span>
																	</p>
																	<p>
																		<span> Hotline tư vấn 0964-021-941 phục vụ từ
																			8AM đến 10PM mỗi ngày </span>
																	</p>
																</div>
																<div class="has-border">Furnitica - Trên 5 năm bán
																	hàng với hơn 5000+ sản phẩm nội thất gỗ và đồ trang trí
																	nhà... Giao hàng Toàn Quốc</div>
															</div>
														</div>
													</div>

													<div class="review">
														<ul class="nav nav-tabs">
															<li class="active"><a data-toggle="tab"
																href="#description" class="active show">Description</a>
															</li>

														</ul>

														<div class="tab-content">
															<div id="description"
																class="tab-pane fade in active show">
																<p>${ sanpham.mieuTa }</p>

															</div>


														</div>
													</div>
													<div class="related">
														<div class="title-tab-content  text-center">
															<div class="title-product justify-content-start">
																<h2>Sản phẩm liên quan</h2>
															</div>
														</div>
														
														<%-- <h1>${num }</h1> --%>
														<div class="tab-content">
															<div class="row">
																<c:if test="${ splienquan.size() > 0 }">
																	<c:forEach var="item" items="${ splienquan }" >
																		<div class="item text-center col-md-4">
																			<div
																				class="product-miniature js-product-miniature item-one first-item">
																				<div class="thumbnail-container border">
																					<a href="<c:url value="/products/productDetail/${ item.maSP }" />"> <img
																						class="img-fluid image-cover"
																						src="<c:url value="/assets/user/upload/${ item.anh }"/>" alt="img" > <img
																						class="img-fluid image-secondary"
																						src="<c:url value="/assets/user/upload/${ item.anh }"/>" alt="img" >
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
																							<a href="<c:url value="/products/productDetail/${ item.maSP }" />">${ item.tenSP }</a>
																						</div>
																						<div class="rating">
		
		
																							<span class="price"> </span>
																						</div>
																						<div class="product-group-price">
																							<div class="product-price-and-shipping">
																								<span class="price">${ item.donGiaSauKM }</span> đ
																							</div>
																						</div>
																					</div>
																					<div
																						class="product-buttons d-flex justify-content-center">
		
																						<form action="<c:url value="/addToCart/${ item.maSP }" />"
																							method="post" class="formAddToCart" id="my_form">
																							<!-- <input type="hidden" name="quantity" value="1">
																							<input type="hidden" name="productId" value="2"> -->
																							<!-- <a class="add-to-cart" href="#" onclick="document.getElementById('my_form').submit();" 
		                                                                                        data-button-action="add-to-cart">
		                                                                                        <i class="fa fa-shopping-cart"
		                                                                                            aria-hidden="true"></i>
		                                                                                    </a> -->
		
		
																							<button type="submit" class="add-to-cart">
																								<i class="fa fa-shopping-cart" aria-hidden="true"></i>
																							</button>
																						</form>
																						<a href="<c:url value="/assets/user/products/productDetail/2" />"
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
		</div>
	</div>

</section>
