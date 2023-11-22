<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<div>
	<div class="main-container">
		<div class="pd-ltr-20">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Trang chủ</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<c:url value="/assets/admin/home"/>">Trang chủ</a></li>

							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="card-box pd-20 height-100-p mb-30">
				<div class="row align-items-center">
					<div class="col-md-4">
						<img
							src="<c:url value="/assets/admin/vendors/images/banner-img.png" />"
							alt="">	
					</div>
					<div class="col-md-8">
						<h4 class="font-20 weight-500 mb-10 text-capitalize">
							Welcome
							<div class="weight-600 font-30 text-blue">${ maNV }</div>
						</h4>
						<p class="font-18 max-width-600">Cafe Take Away - 
						Chuỗi bán cafe mang đi lớn nhất Sao Hoả</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div>
									<i class="icon-copy fa fa-address-book text-primary"
										style="font-size: 85px;" aria-hidden="true"></i>
								</div>
							</div>
							<div class="widget-data">
								<div class="h4 mb-0">11</div>
								<div class="weight-600 font-14">Người dùng</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div>
									<i class="icon-copy dw dw-mail text-warning"
										style="font-size: 85px;" aria-hidden="true"></i>
								</div>
								<i class=""></i>
							</div>
							<div class="widget-data">
								<div class="h4 mb-0">4</div>
								<div class="weight-600 font-14">Phản hồi</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div class="mr-2">
									<i class="icon-copy dw dw-box text-success"
										style="font-size: 85px;" aria-hidden="true"></i>
								</div>

							</div>
							<div class="widget-data">
								<div class="h4 mb-0">13</div>
								<div class="weight-600 font-14">Sản phẩm</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 mb-30">
					<div class="card-box height-100-p widget-style1">
						<div class="d-flex flex-wrap align-items-center">
							<div class="progress-data">
								<div>
									<i class="icon-copy dw dw-delivery-truck-1 text-info"
										style="font-size: 85px;" aria-hidden="true"></i>
								</div>
							</div>
							<div class="widget-data">
								<div class="h4 mb-0">1</div>
								<div class="weight-600 font-14">Đơn hàng</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- <div class="card-box mb-30">
					<h2 class="h4 pd-20">Sản phẩm bán nhiều nhất</h2>
					<table class=" table nowrap">
						<thead>
							<tr>
								<th class="table-plus">Sản phẩm</th>
								<th>Tên</th>
								<th>Bảo hành</th>
								<th>Size</th>
								<th>Giá</th>
								<th>Số lượng</th>
	
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
							<tr>
								<td class="table-plus">
									<img src="vendors/images/product-1.jpg" width="70" height="70" alt="">
								</td>
								<td>
									<h5 class="font-16">Shirt</h5>
									by John Doe
								</td>
								<td>Black</td>
								<td>M</td>
								<td>$1000</td>
								<td>1</td>
	
							</tr>
						</tbody>
					</table>
				</div> -->

		</div>
	</div>
</div>
