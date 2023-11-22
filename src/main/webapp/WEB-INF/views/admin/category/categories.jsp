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
							<h4>Quản lý danh mục</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Quản
									lý danh mục</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-8">
						<a href="<c:url value="/admin/categories/add"/> " type="button"
							class="btn btn-outline-primary btn-lg m-2 mb-4">Thêm danh mục
							sản phẩm</a>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="form-group row">
							<div class="col-sm-12 col-md-10">
								<form action="/admin/categories/page/1">
									<div class="form-inline float-left" style="margin-top: 10px;">
										<input class="form-control" placeholder="Tìm kiếm"
											type="hidden" style="width: 60%; display: block;"
											name="sortField" value="categoryId"> <input
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
				<div class="pd-20">

					<h4 class="text-blue text-center h3">Danh sách danh mục sản
						phẩm</h4>



				</div>
				<div class="pb-20">
					<table class=" table stripe hover nowrap"
						style="max-width: 600px; margin: 0 auto;">
						<thead>
							<tr>
								<th style="color: blue;"><a
									href="/admin/categories/page/1?sortField=categoryId&amp;sortDir=desc ">
										ID <span> <i class="icon-copy fa fa-arrow-down"
											aria-hidden="true"></i>

									</span> <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>
								<th style="color: blue;"><a
									href="/admin/categories/page/1?sortField=categoryName&amp;sortDir=desc ">
										Tên danh mục <!-- <i class="icon-copy fa" th:classappend = "${sortField} == 'productId' && ${sortField} == 'asc'? fa-arrow-down : fa-arrow-up" aria-hidden="true"></i> -->
								</a></th>


								<!-- <th class="table-plus datatable-nosort">Số sản phẩm</th> -->
								<th class="datatable-nosort">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${ loaisp }">
								<tr>
									<td>${ item.maLoai }</td>
									<td>${ item.tenLoai }</td>
									<td>
										<div class="dropdown">
											<a
												class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle"
												href="#" role="button" data-toggle="dropdown"> <i
												class="dw dw-more"></i>
											</a>
											<div
												class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">

												<a class="dropdown-item" href="<c:url value="/admin/categories/update/${ item.maLoai }"/> "><i
													class="dw dw-edit2"></i> Chỉnh sửa</a> <a
													class="dropdown-item" href="<c:url value="/admin/categories/delete/${ item.maLoai }"/>">
													<i class="dw dw-delete-3"></i>Xóa
												</a>
												<!-- Button trigger modal -->
												<!-- <button sec:authorize="hasAnyAuthority('ADMIN')" type="button" class="dropdown-item" data-toggle="modal"
													data-target="#exampleModal">
													<i class="dw dw-delete-3"></i>Xóa
												</button> -->

												<!-- Modal -->

											</div>
										</div>
									</td>
								</tr>

							</c:forEach>
						</tbody>

					</table>
					<div class="ml-2">

						<div>Tổng số danh mục: ${ loaisp.size() }.</div>
					</div>


				</div>

			</div>
		</div>
	</div>
</div>