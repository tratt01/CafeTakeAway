<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>

								<span> Thêm Tài khoản </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="/CafeTakeAway/admin/home ">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm Tài khoản </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form id="sp" style="width: 700px;" modelAttribute="account"
								class="shadow-lg rounded bg-light p-2" accept-charset="utf-8"
								action="/CafeTakeAway/admin/account/add" method="post"
								enctype="multipart/form-data">
								
								<h4 class="text-center text-primary">${ status }</h4>
								<c:if test="${ not empty manv }">
									<div class="form-row">
										<div class="form-group col ">
											<label for="maNV">Mã Nhân viên</label> 
											<form:select class="custom-select" path="maNV" id="maNV">
												<c:forEach var="item" items="${ manv }">
													<form:option value="${ item }">${ item }</form:option>
												</c:forEach>
											</form:select>
										</div>
										<div class="form-group col">
											<label for="chucVu">Chức vụ </label>
											<form:input id="chucVu" path="chucVu" type="text"
												class="form-control" value="" />
										</div>
									</div>
	
									<div class="form-row">
										<div class="form-group col">
											<label for="username">username </label>
											<form:input id="username" path="username" type="text"
												class="form-control" value="" />
										</div>
										<div class="form-group col">
											<label for="password">password</label>
											<form:input id="password" path="password" type="text"
												class="form-control" />
										</div>
									</div>
	
									<div class="text-center">
										<button type="submit" class="btn btn-primary">
											<h4 class="text-light">Đồng ý</h4>
										</button>
									</div>
								</c:if>
								
								
							</form:form>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>