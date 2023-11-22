<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Chi tiết đơn hàng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Chi
									tiết đơn hàng</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="invoice-wrap">
				<div class="invoice-box">
					<div class="invoice-header">
						<div class="logo text-center">
							<img src="vendors/images/deskapp-logo.png" alt="">
						</div>
					</div>
					<h4 class="text-center mb-30 weight-600 text-success">Chi tiết
						đơn hàng</h4>
					<div class="row pb-30">

						<div class="col-md-6">
							<div class="text-right">
								<p class="font-14 mb-5">
									Ngày đặt hàng: <strong class="weight-600">2021-12-10</strong>
								</p>


							</div>
						</div>

					</div>

					<div class="invoice-desc pb-30">
						<table class=" table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">Sản phẩm</th>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá bán</th>
									<th class="text-danger">Thành tiền</th>
								</tr>
							</thead>
							<c:forEach var="item" items="${ sanpham }">
								<tbody>
									<tr>

										<td class="table-plus"><img
											src="<c:url value="/assets/user/upload/${ item.anh }" />"
											width="70" height="70" alt=""></td>
										<td>${ item.tenSP }</td>
										<td>${ item.soLuong }</td>
										<td><span><fmt:formatNumber type="number"
													maxFractionDigits="3" value="${ item.giaBan }" /></span> đ</td>
										<td><span><fmt:formatNumber type="number"
													maxFractionDigits="3"
													value="${ item.soLuong * item.giaBan }" /></span> đ</td>
										<c:set var="total"
											value="${ total + (item.soLuong * item.giaBan) }" />

									</tr>

								</tbody>
							</c:forEach>



						</table>


						<div class="col-11 text-right m-3">
							Tổng tiền: <span style="font-size: 20px;" class="text-success"><fmt:formatNumber
									type="number" maxFractionDigits="3"
									value="${total }" /></span> đ VNĐ

						</div>
						<hr>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>