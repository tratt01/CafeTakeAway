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

								<span> Thêm sản phẩm khuyến mãi </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<c:url value="/admin/home" />">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm sản phẩm khuyến mãi </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form action="/CafeTakeAway/admin/discounts/add/${ sp.maSP }"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;">
								<h4 class="text-center text-primary">Thông tin sản phẩm
									khuyến mãi</h4>
									
								<div class="form-row">
									<div class="form-group col">
										<label for="maSP">Mã Sản phẩm:</label>
										<input type="text" class="form-control" id="maSP"
											readonly="true" value="${ sp.maSP }"  />
									</div>
									<div class="form-group col">
										<label for="tenSP">Tên sản phẩm:</label>
										<input type="text" class="form-control" id="tenSP"
											readonly="true" value="${ sp.tenSP }" />
									</div>
								</div>
								
								<div class="form-row">
									<div class="form-group col">
									<label for="option">Thêm hoặc xoá khuyến mãi</label>
									<select id="option" class="custom-select" name="option">
										<option value="0">Huỷ khuyến mãi</option>
										<option value="1">Thêm khuyến mãi</option>
									</select>
								</div>
									<div class="form-group col">
										<label for=""giaKM"">Giá Khuyến Mãi:</label>
										<input type="number" class="form-control" id="giaKM"
											value="" name="giaKM" />
									</div>
								</div>


								
								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<h4 class="text-light">Đồng ý</h4>
									</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>