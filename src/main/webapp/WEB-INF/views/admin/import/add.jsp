<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">
							<h4>

								<span> Thêm Phiếu nhập kho </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<c:url value="/admin/home"/> ">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm Phiếu nhập kho </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form action="/CafeTakeAway/admin/import/add"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;" enctype="multipart/form-data"
								modelAttribute="pn" accept-charset="utf-8">
								<h4 class="text-center text-primary">Thêm Phiếu nhập kho</h4>
								<div class="form-row">
								
									<div class="form-group col">
										<label for="name">Mã Phiếu nhập</label>
										<form:input type="text" class="form-control" id="maPN"
											readonly="true" required="" path="maPN" value="${ maPN }" />
									</div>
									<div class="form-group col">
										<label for="maNV">Mã Nhân viên:</label>
										<form:input type="text" class="form-control" id="maNV"
											readonly="true" required="" path="maNV" value="${ maNV }"/>
									</div>
								</div>

	<h1></h1>
								<div class="form-row">
									<div class="form-group col">
										<label for="danhmuc">Nhà cung cấp: </label>
										<form:select id="action" class="custom-select"
											path="maNCC">
											<c:forEach var="item" items="${ maNCC }">
												<form:option value="${ item.maNCC }" selected="selected">${ item.tenNCC }</form:option>
											</c:forEach>
										</form:select>
									</div>
									
									<div class="form-group col">
										<label for="ngayNhap">Ngày nhập:</label>
										<form:input type="date" class="form-control" id="ngayNhap"
											required="" path="ngayNhap" value="${ ngayNhap }"/>
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