<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="left-side-bar">
	<div class="brand-logo">
		<a href="<c:url value="/admin/home"/>"> <!-- <img src="vendors/images/deskapp-logo.svg" alt="" class="dark-logo"> -->
			<img src="<c:url value="/assets/user/img/home/c19.png" />" alt=""
			class="light-logo">
		</a>
		<div class="close-sidebar" data-toggle="left-sidebar-close">
			<i class="ion-close-round"></i>
		</div>
	</div>
	<div class="menu-block customscroll">
		<div class="sidebar-menu">
			<ul id="accordion-menu">
				<li><a href="<c:url value="/admin/home"/>"
					class="dropdown-toggle  no-arrow"> <span
						class="micon dw dw-house-1"></span><span class="mtext">Trang
							chủ</span>
				</a></li>
				<li><a href="<c:url value="/admin/orders"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý đơn hàng</span>
				</a></li>
				<li><a href="<c:url value="/admin/products"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý sản phẩm</span>
				</a></li>
				<li><a href="<c:url value="/admin/formula"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý công thức</span>
				</a></li>
				<li><a href="<c:url value="/admin/categories"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý danh mục</span>
				</a></li>
				<li><a href="<c:url value="/admin/users"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý nhân viên</span>
				</a></li>
				<li><a href="<c:url value="/admin/discounts"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý khuyến mãi</span>
				</a></li>
				<li><a href="<c:url value="/admin/accounts"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý tài khoản</span>
				</a></li>
				<li><a href="<c:url value="/admin/shops"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý Đại lý</span>
				</a></li>
				<li><a href="<c:url value="/admin/suppliers"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý Nhà cung cấp</span>
				</a></li>
				<li><a href="<c:url value="/admin/statistics"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Thống kê doanh thu</span>
				</a></li>
				<li><a href="<c:url value="/admin/ingredient"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Thống kê nguyên liệu</span>
				</a></li>
				<li><a href="<c:url value="/admin/import"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý Đơn đặt hàng</span>
				</a></li>
				<li><a href="<c:url value="/admin/export"/>"
					class="dropdown-toggle  no-arrow"> <span class="micon"><i
							class="icon-copy fa fa-minus" aria-hidden="true"></i></span><span
						class="mtext">Quản lý Phiếu xuất kho</span>
				</a></li>
			</ul>
		</div>
	</div>
</div>

