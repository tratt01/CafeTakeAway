<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="main-container">
	<div class="pd-ltr-20 xs-pd-20-10">
		<div class="page-header">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="title">

						<h4>
							<span>Thống kê doanh thu</span>

						</h4>
					</div>
					<nav aria-label="breadcrumb" role="navigation">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/admin/home">Trang
									chủ </a></li>
							<li class="breadcrumb-item active" aria-current="page"><span>Quản
									Lý Hoá Đơn</span></li>
						</ol>
					</nav>
				</div>

			</div>
		</div>

		<div class="card-box mb-30 p-5" style="min-height: 500px;">
			<div class="container mt-5 d-flex justify-content-center">
				<div class="row">
					<div class="col">
						<form:form action="/CafeTakeAway/admin/orders" method="post"
							modelAttribute="hd" class="shadow-lg rounded bg-light p-2"
							style="width: 700px;">
							<h4 class="text-center text-primary">Tra cứu hoá đơn</h4>
							<div class="form-group">
								<label for="name">Mã Đại Lí</label>
								<form:input type="text" path="maDiaDiem" class="form-control"
									id="name" value="%" />
							</div>
							<div class="form-row">
								<div class="form-group col">
									<label for="startDay">Ngày bắt đầu:</label>
									<form:input class="form-control" placeholder="Chọn ngày"
										id="startDay" type="date" path="startDay"
										value="${ startDay }" />
								</div>

								<div class="form-group col">
									<label for="endtDay">Ngày kết thúc:</label>
									<form:input class="form-control" placeholder="Chọn ngày"
										id="endtDay" type="date" path="endDay" value="${ endDay }" />
								</div>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									<h4 class="text-light">Tiềm Kiếm</h4>
								</button>
							</div>

						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="pd-ltr-20 xs-pd-20-10">
		<div class="card-box mb-30">
			<div class="pd-20" style="display: block; text-align: center;">
				<h3 class="text-blue h4 justify-content-center">Danh sách Hoá
					Đơn</h3>
			</div>
			<div class="pb-20">
				<table class=" table stripe hover nowrap">
					<thead>
						<tr>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=productId&amp;sortDir=asc">
									Mã Địa điểm <span> <i class="icon-copy fa fa-arrow-up"
										aria-hidden="true"></i>
								</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
							</a></th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=productName&amp;sortDir=asc">
									Địa chỉ </a></th>
							<th>Mã hoá đơn</th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=enteredDate&amp;sortDir=asc">
									Mã Nhân viên </a></th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=quantity&amp;sortDir=asc">
									Ngày lập </a></th>
							<th style="color: blue;"><a
								href="/admin/products/page/1?sortField=unitPrice&amp;sortDir=asc">
									Tổng tiền </a></th>
							<th class="datatable-nosort">Hành động</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${ hoadon }" var="hoadon">
							<tr>
								<td>${ hoadon.maDiaDiem }</td>
								<td class="table-plus">${ hoadon.diaChi }</td>
								<td>${ hoadon.maHoaDon }</td>
								<td>${ hoadon.maNhanVien }</td>
								<!-- <td th:text="${product.enteredDate}">29-03-2018</td> -->
								<td class="table-plus">${ hoadon.ngayLap }</td>
								<td><fmt:formatNumber type="number" maxFractionDigits="3"
										value="${ hoadon.tongTien }" /> đ</td>
								<td>
									<div class="dropdown">
										<a
											class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
											href="#" role="button" data-toggle="dropdown"> <i
											class="dw dw-more"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
											<a class="dropdown-item"
												href="<c:url value="/admin/order/orderDetail/${ hoadon.maHoaDon }"/>"><i
												class="icon-copy fa fa-plus" aria-hidden="true"></i> Xem </a> <a
												onclick="return confirm('Bạn muốn xóa sản phẩm ?');"
												class="dropdown-item" href="/admin/products/delete/13"><i
												class="dw dw-delete-3"></i>Xóa </a>
										</div>
									</div>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				
			</div>
		</div>
	</div>
</div>