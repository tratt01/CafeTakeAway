<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="page-header">
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<div class="title">

							<h4>
								<span>Chỉnh sửa khuyến mãi</span>

							</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/admin/home">Trang
										chủ </a></li>
								<li class="breadcrumb-item active" aria-current="page"><span>Chỉnh
										sửa khuyến mãi</span></li>
							</ol>
						</nav>
					</div>

				</div>
			</div>

			<div class="card-box mb-30 p-5" style="min-height: 500px;">
				<div class="container mt-5 d-flex justify-content-center">
					<div class="row">
						<div class="col">
							<form action="/admin/discounts/saveOrUpdate" method="post"
								class="shadow-lg rounded bg-light p-2" style="width: 700px;">
								<h4 class="text-center text-primary">Thông tin sản phẩm
									khuyến mãi</h4>
								<div class="form-group">
									<label for="name">Tên sản phẩm:</label> <input type="text"
										class="form-control" id="name" readonly="" name="productName"
										value="Cà Phê Sữa Đá"> <input type="hidden"
										class="form-control" id="id" readonly="" name="discountId"
										value="12">
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label for="startDay">Ngày bắt đầu:</label> <input
											class="form-control" placeholder="Chọn ngày" id="startDay"
											type="date" name="startDate" value="2021-09-21">
									</div>
									<div class="form-group col">
										<label for="endtDay">Ngày kết thúc:</label> <input
											class="form-control" placeholder="Chọn ngày" id="endtDay"
											type="date" name="endDate" value="2022-10-05">
									</div>
								</div>
								<div class="form-group">
									<label for="discount">Phần trăm giảm:</label> <input
										type="number" class="form-control" id="discount" required=""
										min="1" max="100" name="discountPercent" value="10">
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