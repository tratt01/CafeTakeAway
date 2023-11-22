<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="header">
	<div class="header-left">
		<div class="menu-icon dw dw-menu"></div>
		<div class="search-toggle-icon dw dw-search2"
			data-toggle="header_search"></div>
		<div class="header-search"></div>
	</div>
	<div class="header-right">


		<div class="user-info-dropdown">
			<div class="dropdown">
				<a class="dropdown-toggle" href="#" role="button"
					data-toggle="dropdown"> <span class="user-icon"> <img
						src="<c:url value="/assets/admin/vendors/images/admin-img.png" />"
						alt="">
				</span> <span class="user-name">ADMIN</span> <span class="user-name"></span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
					<a class="dropdown-item " href="<c:url value="/admin/profiles"/>"><i
						class="dw dw-user1"></i>Thông tin cá nhân</a> 
					<a class="dropdown-item "
						href="<c:url value="/admin/profiles/updatePassword"/>"><i
						class="icon-copy fi-key"></i>Thay đổi mật khẩu</a> 
					<a class="dropdown-item" href="<c:url value="/logout"/>"><i
						class="dw dw-logout"></i> Đăng xuất</a>
					<!-- <a href="" class="dropdown-toggle  no-arrow">
							<span class="micon"><i class="dw dw-logout" aria-hidden="true"></i></span><span class="mtext">Đăng xuất</span>
						</a> -->
				</div>
			</div>
		</div>

	</div>
</div>

