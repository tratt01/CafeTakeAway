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

								<span> Thêm sản phẩm </span>
							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="<c:url value="/admin/home"/> ">Trang chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>
										Thêm sản phẩm </span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form:form action="/CafeTakeAway/admin/products/add" method="post"
								class="shadow-lg rounded bg-light p-2" style="width: 700px;"
								enctype="multipart/form-data" modelAttribute="sp" accept-charset="utf-8">
								<h4 class="text-center text-primary">Thông tin sản phẩm</h4>
								<div class="form-row">
									<div class="form-group col">
										<label for="name">Tên sản phẩm:</label> 
										<form:input type="text"
											class="form-control" id="name" required="" path="tenSP"
											value=""/>
									</div>
									<div class="form-group col">
										<label for="danhmuc">Loại sản phẩm: </label> 
										<form:select id="action" class="custom-select"
											path="maLoai">
											<c:forEach var="item" items="${ loaisp }">
												<c:choose>
													<c:when test="${item.maLoai == sp.maLoai}">
														<form:option value="${ item.maLoai }" selected="selected">${ item.tenLoai }</form:option>
													</c:when>
													
													<c:otherwise>
														<form:option value="${ item.maLoai }">${ item.tenLoai }</form:option>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</form:select>
									</div>
								</div>


								<div class="form-row">
									<div class="form-group col">
										<label for="price">Giá:</label> 
										<form:input type="number"
											class="form-control" id="price" required="" path="donGia"
											value="0"/> 
									</div>
									
								</div>
								<div class="form-row">
									
									<!-- <div class="form-group col">
										<label for="startDay">Ngày bắt đầu:</label> <input
											class="form-control" placeholder="Chọn ngày" id="startDay"
											type="date" name="enteredDate" value="">
									</div> -->
								</div>
								<div class="form-group">
									<div class="mb-3">
										<label for="description">Mô tả:</label>
										<form:textarea class="form-control " id="description"
											path="mieuTa"></form:textarea>
									</div>
								</div>

								<div class="form-group">
									<label>Hình ảnh</label> 
									<input type="file" name="file"
										accept="image/png, image/jpeg" id="file"
										onchange="showPreviewOne(event)"
										class="form-control-file form-control height-auto">
									<p>
										<img src="" id="thumnail" alt="Hình sản phẩm"
											style="width: 500px;">

									</p>
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