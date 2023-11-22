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
							<form:form action="/CafeTakeAway/admin/supplier/update/${ ncc.maNCC }"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;" enctype="multipart/form-data"
								modelAttribute="ncc" accept-charset="utf-8">
								<h4 class="text-center text-primary">${ status }</h4>
								<div class="form-row">
									<div class="form-group col">
										<label for="maNCC">Mã NCC:</label>
										<form:input type="text" class="form-control" id="maNCC"
											required="" path="maNCC"  value="${ ncc.maNCC }" />
									</div>
									<div class="form-group col">
										<label for="tenNCC">Tên NCC:</label>
										<form:input type="text" class="form-control" id="tenNCC"
											required="" path="tenNCC" value="${ ncc.tenNCC }" />
									</div>
								</div>
								
								<div class="form-row">
									<div class="form-group col">
										<label for="email">Email:</label>
										<form:input type="email" class="form-control" id="email"
											required="" path="email" value="${ ncc.email }"  />
									</div>
									<div class="form-group col">
										<label for="donVi">Sđt:</label>
										<form:input type="text" class="form-control" id="sdt"
											required="" path="sdt" value="${ ncc.sdt }" />
									</div>
								</div>
								
								<div class="form-row">
									<div class="form-group col">
										<label for="diaChi">Địa chỉ:</label>
										<form:input type="text" class="form-control" id="diaChi"
											required="" path="diaChi" value="${ ncc.diaChi }" />
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

		</div>
	</div>
</div>