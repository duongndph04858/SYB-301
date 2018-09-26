<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/admin-header.css">
</head>
<body>
	<div class="row wrap-header">
		<div class="row header-top">
			<div class="col-3 p-1">
				<!--logo-->
				<a class="home"> <img src="resources/images/logo.png"
					height="100%" alt="">
				</a>
			</div>
			<div class="col-9 d-flex justify-content-end">
				<div class="d-flex align-items-center">
					<img src="resources/images/user-avatar.jpg" id="user-avatar" alt="">
					<div class="dropdown">
						<a class="btn dropdown-toggle" role="button" id="userAction"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Dương </a>
						<div class="dropdown-menu" aria-labelledby="userAction">
							<a class="dropdown-item" href=""> <i
								class="fa fa-user-circle-o" aria-hidden="true"></i> &nbsp; Thông
								tin cá nhân
							</a> <a class="dropdown-item" href="" data-toggle="modal"
								data-target="#logoutModal"><i class="fa fa-power-off"
								aria-hidden="true"></i> &nbsp; Đăng xuất </a>
						</div>
					</div>
					<div class="language-dropdown">
						<a class="btn dropdown-toggle" role="button" id="language"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							VN </a>
						<div class="dropdown-menu" aria-labelledby="language">
							<a class="dropdown-item" href="#"> English </a> <a
								class="dropdown-item" href="#"> Vietnamese </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row d-flex justify-content-between header-bottom">
			<div class="menu-item d-flex align-items-center">
				<a href="admin/dashboard/home" class="home-link menu-link"> <i
					class="fa fa-home" aria-hidden="true"></i>
				</a>
			</div>
			<div class="menu-item d-flex  align-items-center">
				<a href="admin/dashboard/product/product-management"
					class="menu-link"> Sản phẩm </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<a href="admin/dashboard/order/view-order" class="menu-link">
					Đơn hàng </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<a href="admin/dashboard/category/category-management"
					class="menu-link"> Danh mục </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<a href="#" class="menu-link"> Khuyến mãi </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<a href="#" class="menu-link"> Thiết lập phản hồi nhanh </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<a href="#" class="menu-link"> Thiết lập cửa hàng </a>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="logoutModal">
						Đăng xuất
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Bạn thực sự muốn đăng xuất?
				</div>
				<div class="modal-footer">
					<form id="form-logout" action="logout" theme="simple" method="post">
						<button id="btn-logout" type="submit" class="btn btn-danger">
							Đăng xuất</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Hủy</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>