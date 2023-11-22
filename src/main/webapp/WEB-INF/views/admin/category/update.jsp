<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>
								<span>Chỉnh sửa danh mục sản phẩm</span>

							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/index">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>Chỉnh
										sửa danh mục sản phẩm</span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form action="/CafeTakeAway/admin/categories/update"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;" modelAttribute="loaispById">
								<h4 class="text-center text-primary" >Thông
									tin danh mục</h4>
								<div></div>
								<div class="form-group">
									<label for="id">Mã danh mục:</label>
									<form:input type="text" class="form-control" id="id"
										readonly="true" path="maLoai"
										value="${ loaispById.maLoai }" />
								</div>

								<div class="form-group">
									<label for="name">Tên danh mục:</label>
									<form:input type="text" class="form-control" id="name"
										required="" path="tenLoai" value="${ loaispById.tenLoai }" />
								</div>

								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<h4 class="text-light">
											<span> Cập nhập </span>

										</h4>
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>