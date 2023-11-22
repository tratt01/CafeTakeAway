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
								<span> Thêm Quản lý </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="/CafeTakeAway/admin/home ">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm Quản lý </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form id="sp" style="width: 700px;" modelAttribute="nv"
								class="shadow-lg rounded bg-light p-2" accept-charset="utf-8"
								action="/CafeTakeAway/admin/user/addUser" method="post"
								enctype="multipart/form-data">
								<h4 class="text-center text-primary">Thông tin Quản lý</h4>
								
								<div class="form-row">
									<div class="form-group col">
										<label for="maNhanVien">Mã Nhân viên</label>
										<form:input id="maNhanVien" path="maNhanVien" type="text"
											class="form-control" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="name">Họ</label>
										<form:input id="ho" path="ho" type="text" class="form-control" />
									</div>
									<div class="form-group col">
										<label for="ten">Tên</label>
										<form:input id="ten" path="ten" type="text"
											class="form-control" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="ngaySinh">Ngày sinh</label>
										<form:input id="ngaySinh" path="ngaySinh" type="date"
											class="form-control" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="diaChi">Địa chỉ</label>
										<form:input id="diaChi" path="diaChi" type="text"
											class="form-control" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="gioiTinh">Giới tính</label> <form:select
											class="custom-select" path="gioiTinh" id="gioiTinh">
											<form:option value="Nam">Nam</form:option>
											<form:option value="Nữ">Nữ</form:option>
										</form:select>
									</div>
									<div class="form-group col">
										<label for="email">Email</label>
										<form:input id="email" path="email" type="email"
											class="form-control" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="sdt">Số điện thoại</label>
										<form:input id="sdt" path="sdt" type="text"
											class="form-control" />
									</div>
									<div class="form-group col">
										<label for="cmnd">Cmnd</label>
										<form:input id="cmnd" path="cmnd" type="text"
											class="form-control" />
									</div>
								</div>

								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<h4 class="text-light">Đồng ý</h4>
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>

			<div class="card-box p-5"></div>

		</div>
	</div>
</div>