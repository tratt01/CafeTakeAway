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

								<span> Thêm Phiếu xuất kho </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<c:url value="/admin/home"/> ">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm Nguyên liệu vào phiếu </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form action="/CafeTakeAway/admin/export/addItem"
								method="post" class="shadow-lg rounded bg-light p-2"
								style="width: 700px;" enctype="multipart/form-data"
								modelAttribute="ct_px" accept-charset="utf-8">
								<h4 class="text-center text-primary">Thêm Nguyên liệu vào phiếu</h4>
								<div class="form-row">
								
									<div class="form-group col">
										<label for="name">Mã Phiếu xuất</label>
										<form:input type="text" class="form-control" id="maPX"
											readonly="true" required="" path="maPX" value="${ id }" />
									</div>
									<div class="form-group col">
										<label for="danhmuc">Nguyên liệu: </label>
										<form:select id="action" class="custom-select"
											path="maNL">
											<c:forEach var="item" items="${ nl }">
												<form:option value="${ item.maNL }" selected="selected">${ item.tenNL }</form:option>
											</c:forEach>
										</form:select>
									</div>
									
								</div>

								<div class="form-row">
									<div class="form-group col">
										<label for="soLuong">Số lượng:</label>
										<form:input type="number" class="form-control" id="soLuong"
											required="" path="soLuong"/>
									</div>
									
									<div class="form-group col">
										<label for="donVi">Đơn vị:</label>
										<form:input type="text" class="form-control" id="donVi"
											required="" path="donVi" />
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