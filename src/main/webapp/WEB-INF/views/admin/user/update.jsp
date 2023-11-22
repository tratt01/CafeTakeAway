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
							<h4>Chỉnh sửa thông tin người dùng</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page">Chỉnh
									sửa thông tin người dùng</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form action="/CafeTakeAway/admin/user/update/${ user.maNhanVien }" method="post"
								class="shadow-lg rounded bg-light p-2" style="width: 700px;"
								modelAttribute="user">
								<h4 class="text-center text-primary">Thông tin người dùng</h4>

								<div class="form-group">
									<label for="name">Họ tên:</label> <input type="text"
										readonly="" class="form-control" id="name" name="fullname"
										value="${ user.ho } ${ user.ten }"> 
									<input type="hidden" class="form-control" required="" id="userId"
										name="userId" value="">
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="email">Email</label> 
										<form:input type="text"
											class="form-control" id="mail" required="" path="email"
											value="${ user.email }"/>
									</div>
									<div class="form-group col">
										<label for="phone">Số điện thoại:</label> 
										<form:input type="text"
											class="form-control" id="phone" required="" path="sdt"
											value="${ user.sdt }"/>
									</div>
								</div>

								<div class="form-group">
									<label for="inputAddress">Địa chỉ:</label> 
									<form:input type="text"
										class="form-control" id="inputAddress" required=""
										path="diaChi" value="${ user.diaChi }"/>
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

		</div>
	</div>
</div>