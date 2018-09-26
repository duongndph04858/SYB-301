<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thông tin đơn hàng</title>
<link rel="stylesheet" href="resources/css/cart.css">
<link rel="stylesheet" href="resources/css/order-info.css">
</head>
<body class="container-fluid">
	<jsp:include page="paterns/_header.jsp"></jsp:include>
	<div class="content-wrapper row">
		<div class="cart-content">
			<div class="cart-nav-bar d-flex justify-content-between">
				<div class="cart-nav-item w-100">
					<a class="number-border-radius"> 1 </a> &nbsp; Giỏ hàng
				</div>
				<div class="canvas-arrow">
					<canvas id="first-triangle" width="25" height="50">
        </canvas>
				</div>
				<div class="cart-nav-item bg-orange w-100 text-white">
					<a class="number-border-radius border-white"> 2 </a> &nbsp; Thông
					tin giao hàng
				</div>
				<div class="canvas-arrow">
					<canvas id="second-triangle" width="25" height="50">
        </canvas>
				</div>
				<div class="cart-nav-item w-100">
					<a class="number-border-radius "> 3 </a> &nbsp; Phương thức thanh
					toán
				</div>
			</div>
			<form action="payment">
				<div class="cart-product-table">
					<table class="w-75 table-order m-auto">
						<tr>
							<td><h5>Địa chỉ giao hàng</h5></td>
							<td><h5>Thông tin liên lạc</h5></td>
						</tr>
						<tr>
							<td class="border-right">Số nhà: <input name="homeNumber"
								class="form-control" type="text"></td>
							<td>Họ và tên: <input name="username" class="form-control"
								type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Đường: <input name="street"
								class="form-control" type="text"></td>
							<td>Số điện thoại: <input name="phone" class="form-control"
								type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Quận / Huyện: <input
								class="form-control" name="distric" type="text"></td>
							<td>Địa chỉ email: <input name="email" class="form-control"
								type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Tỉnh / Thành phố: <input
								class="form-control" name="province" type="text"></td>
							<td>Facebook cá nhân: <input name="facebook"
								class="form-control" type="text"></td>
						</tr>
					</table>
				</div>
				<div class="table-button">
					<div class="justify-content-between row">
						<div class="col-3 pl-5">
							<a href="cart"> <i
								class="fa fa-chevron-circle-left bg-white text-dark"
								aria-hidden="true"></i> Quay lại giỏ hàng
							</a>
						</div>

						<div class="col-2">
							<button type="submit" class="btn btn-success">
								Tiếp tục <i class="fa fa-chevron-right" aria-hidden="true"></i>
							</button>

						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<c:if test="${not empty notice }">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">
							Thông báo!
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="errors">
							<span id="erMessage"> ${notice }
							</span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>

	</c:if>
	<jsp:include page="paterns/_footer.jsp"></jsp:include>
		<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
	<script>
		var c = document.getElementById("first-triangle");
		var ctx = c.getContext("2d");
		ctx.beginPath();
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 0);
		ctx.lineTo(25, 50);
		ctx.lineTo(0, 50);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 0);
		ctx.fillStyle = "#E46422";
		ctx.fill();

		var c = document.getElementById("second-triangle");
		var ctx = c.getContext("2d");
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 50);
		ctx.fillStyle = "#E46422";
		ctx.fill();
		ctx.strokeStyle = "#aaa";
		ctx.stroke();
	</script>
</body>
</html>