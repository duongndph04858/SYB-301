<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<div class="row cart-nav-bar">
				<div class="cart-nav-item">
					<a class="number-border-radius"> 1 </a> &nbsp; Giỏ hàng
				</div>
				<canvas id="first-triangle" width="25" height="50">
      </canvas>
				<div class="cart-nav-item bg-orange text-white">
					<a class="number-border-radius border-white"> 2 </a> &nbsp; Thông
					tin giao hàng
				</div>
				<canvas id="second-triangle" width="25" height="50">
      </canvas>
				<div class="cart-nav-item">
					<a class="number-border-radius"> 3 </a> &nbsp; Phương thức thanh
					toán
				</div>
			</div>
			<div class="cart-product-table">
				<form>
					<table class="w-100 table-order">
						<tr>
							<td><h5>Địa chỉ giao hàng</h5></td>
							<td><h5>Thông tin liên lạc</h5></td>
						</tr>
						<tr>
							<td class="border-right">Số nhà: <input class="form-control"
								type="text"></td>
							<td>Họ và tên: <input class="form-control" type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Đường: <input class="form-control"
								type="text"></td>
							<td>Số điện thoại: <input class="form-control" type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Quận / Huyện: <input
								class="form-control" type="text"></td>
							<td>Địa chỉ email: <input class="form-control" type="text"></td>
						</tr>
						<tr>
							<td class="border-right">Tỉnh / Thành phố: <input
								class="form-control" type="text"></td>
							<td>Facebook cá nhân: <input class="form-control"
								type="text"></td>
						</tr>
					</table>
				</form>
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
					<form action="payment">
						<button type="submit" class="btn btn-success">
							Tiếp tục <i class="fa fa-chevron-right" aria-hidden="true"></i>
						</button>
					</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="paterns/_footer.jsp"></jsp:include>
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