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
								<span> Cập nhập thông tin sản phẩm </span>

							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<c:url value="/admin/home" />">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Cập nhập thông tin sản phẩm </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form
								action="/CafeTakeAway/admin/account/update/${ account.maNV }"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;" enctype="multipart/form-data"
								modelAttribute="account">
								<h4 class="text-center text-primary">Thông tin tài khoản</h4>

								<div class="form-row">
									<div class="form-group col">
										<label for="maNV">Mã Nhân viên</label>
										<form:input type="text" required="" class="form-control"
											id="maNV" readonly="true" value="${ account.maNV }" path="maNV" />
									</div>
									<div class="form-group col">
										<label for="chucVu">Chức vụ</label>
										<form:input type="text" class="form-control" required=""
											id="chucVu" readonly="true" value="${ account.chucVu }"
											path="chucVu" />
									</div>
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="price">Username</label>
										<form:input type="text" class="form-control" id="username"
											required="" value="${ account.username }" path="username" />
									</div>
									<div class="form-group col">
										<label for="price">Password</label>
										<form:input type="text" class="form-control" id="password"
											required="" value="${ account.password }" path="password" />
									</div>
								</div>


								<div class="text-center">
									<form:button type="submit" class="btn btn-primary">
										<h4 class="text-light">Đồng ý</h4>
									</form:button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>