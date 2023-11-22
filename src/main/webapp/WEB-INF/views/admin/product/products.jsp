<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>Quản lý sản phẩm</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">
									Quản lý sản phẩm</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-8">
						<a href="<c:url value="/admin/products/add" />" type="button"
							class="btn btn-outline-primary btn-lg m-2 mb-4">Thêm sản phẩm</a>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="form-group row">
							<div class="col-sm-12 col-md-10">
								<form action="/admin/products/page/1">
									<div class="form-inline float-left" style="margin-top: 10px;">
										<input class="form-control" placeholder="Tìm kiếm"
											type="hidden" style="width: 60%; display: block;"
											name="sortField" value="productId"> <input
											class="form-control" placeholder="Tìm kiếm" type="hidden"
											style="width: 60%; display: block;" name="sortDir"
											value="asc"> <input class="form-control"
											placeholder="Tìm kiếm" name="keyword" type="text" value=""
											style="width: 60%; display: block;">
										<button class="form-control btn btn-primary" type="submit">Tìm
											kiếm</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-box mb-30">
				<div class="pd-20" style="display: block; text-align: center;">
					<h3 class="text-blue h4 justify-content-center">Danh sách sản
						phẩm</h3>
				</div>
				<div class="pb-20">
					<table class=" table stripe hover nowrap">
						<thead>
							<tr>
								<th style="color: blue;"><a
									href="/admin/products/page/1?sortField=productId&amp;sortDir=desc">
										ID <span> <i class="icon-copy fa fa-arrow-down"
											aria-hidden="true"></i>

									</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th>Sản phẩm</th>
								<th style="color: blue;"><a
									href="/admin/products/page/1?sortField=productName&amp;sortDir=desc">
										Tên sản phẩm </a></th>
								<th style="color: blue;"><a
									href="/admin/products/page/1?sortField=unitPrice&amp;sortDir=desc">
										Giá bán </a></th>
								<th style="color: blue;"><a
									href="/admin/products/page/1?sortField=unitPrice&amp;sortDir=desc">
										Giá khuyến mãi </a></th>
								<th class="datatable-nosort">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${ SanPhamByPage.size() > 0 }">
								<c:forEach var="item" items="${ SanPhamByPage }">
									<tr>
										<td>${ item.maSP }</td>
										<td class="table-plus"><img
											src="<c:url value="/assets/user/upload/${ item.anh}" />"
											width="70" height="70" alt=""></td>
										<td>${ item.tenSP }</td>
										<td><span>${ item.donGia }</span> đ</td>
										<c:if test="${ item.donGia  != item.donGiaSauKM }">
											<td><span>${ item.donGiaSauKM }</span> đ</td>
										</c:if>
										<c:if test="${ item.donGia == item.donGiaSauKM }">
											<td><span></span></td>
										</c:if>
										
										<td>
											<div class="dropdown">
												<a
													class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
													href="#" role="button" data-toggle="dropdown"> <i
													class="dw dw-more"></i>
												</a>
												<div
													class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
													<a class="dropdown-item" href="<c:url value="/admin/discounts/add/${ item.maSP }" />"><i
														class="icon-copy fa fa-plus" aria-hidden="true"></i>Thêm
														khuyến mãi </a> <a class="dropdown-item"
														href="<c:url value="/admin/products/update/${ item.maSP }" />"><i class="dw dw-edit2"></i>
														Chỉnh sửa</a> <a data-id="${ item.maSP }"
														
														class="dropdown-item" href="<c:url value="/admin/products/delete/${ item.maSP }" />"><i
														class="dw dw-delete-3"></i>Xóa </a>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>

							</c:if>


						</tbody>
					</table>
					<div class="ml-2">
						<div>
							Trang <strong>1</strong> trong tổng số ${ page.totalPage } trang.
						</div>
						<div>Tổng số sản phẩm: ${totalData}.</div>
					</div>
					<!-- <div>
						<nav aria-label="..." class="">
							<ul class="pagination justify-content-center">
								<li class="page-item ">
									<span th:unless="${1 < currentPage}" class="page-link">Đầu</span>
								</li>
								<li class="page-item ">
									<span th:unless="${1 < currentPage}" class="page-link">Trước</span>
								</li>
								<li class="page-item"><span class="page-link">1</span></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/products/page/2?sortField=productId&amp;sortDir=asc">2
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/products/page/3?sortField=productId&amp;sortDir=asc">3
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/products/page/4?sortField=productId&amp;sortDir=asc">4
								</a></li>
								<li class="page-item"><a class="page-link"
									style="display: inline-block;"
									href="/admin/products/page/5?sortField=productId&amp;sortDir=asc">5
								</a></li>
								<li class="page-item "><a class="page-link"
									href="/admin/products/page/2?sortField=productId&amp;sortDir=asc">Tiếp</a>
									<span th:unless="${totalPages > currentPage + 1}" class="page-link">Tiếp</span>
								</li>
								<li class="page-item"><a class="page-link"
									href="/admin/products/page/5?sortField=productId&amp;sortDir=asc">Cuối</a>
									<span th:unless="${totalPages > currentPage}" class="page-link">Cuối</span>
								</li>
							</ul>
						</nav>
					</div> -->
				</div>
			</div>
		</div>
	</div>
</div>

<%-- <content tag="script">
	<script>
		function confirmAlert() {
			if (confirm('Bạn muốn xóa sản phẩm ?') == true) {
				var id = $(this).data("id");
				window.location = "admin/products/" + "delete/" + id;
			} else {
				window.location = "admin/products";
			}
			return;
		}
	</script>
<content> --%>