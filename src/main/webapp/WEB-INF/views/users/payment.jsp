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
				<div class="cart-nav-item">
					<a class="number-border-radius "> 2 </a> &nbsp; Thông tin giao hàng
				</div>
				<canvas id="second-triangle" width="25" height="50">
      </canvas>
				<div class="cart-nav-item bg-success text-white">
					<a class="number-border-radius border-white"> 3 </a> &nbsp; Phương
					thức thanh toán
				</div>
			</div>
			<div class="cart-product-table">
				<form>
					<table class="w-100 table-payment">
						<tr>
							<td><div class="form-check">
									<input class="form-check-input" type="radio" name="payment"
										id="radio1" value="option1" checked> <label
										class="form-check-label" for="exampleRadios1">
										<h5>Thanh toán trực tuyến</h5>
									</label>
								</div></td>
							<td class="w-50"><div class="form-check">
									<input class="form-check-input" type="radio" name="payment"
										id="radio2" value="option1" checked> <label
										class="form-check-label" for="exampleRadios1">
										<h5>Thanh toán khi nhận hàng</h5>
									</label>
								</div></td>
						</tr>
						<tr>
							<td class="border-right">Xin lỗi, hiện tại chúng tôi chưa hỗ
								trợ hình thức thanh toán này!</td>
							<td>Tạm tính:
								<h5 class="text-danger">1.111.111 VNĐ</h5>
							</td>
						</tr>
						<tr>
							<td class="border-right"></td>
							<td>Phí vận chuyển:
								<h5 class="text-danger">30.000 VNĐ</h5>
							</td>
						</tr>
						<tr>
							<td class="border-right"></td>
							<td>Thuế VAT:
								<h5 class="text-danger">0 VNĐ</h5>
							</td>
						</tr>
						<tr>
							<td class="border-right"></td>
							<td>Tổng cộng:
								<h5 class="text-danger">1.141.111 VNĐ</h5>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="table-button">
				<div class="justify-content-between row">
					<div class="col-3 pl-5">
						<a href="order-info"> <i
							class="fa fa-chevron-circle-left bg-white text-dark"
							aria-hidden="true"></i> Quay lại thông tin giao hàng
						</a>
					</div>
					<div class="col-2">
						<button class="btn btn-success">
							Đặt hàng <i class="fa fa-chevron-right" aria-hidden="true"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="paterns/_footer.jsp"></jsp:include>
	<script>
		var c = document.getElementById("first-triangle");
		var ctx = c.getContext("2d");
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 50);
		ctx.strokeStyle = "#aaa";
		ctx.stroke();

		var c = document.getElementById("second-triangle");
		var ctx = c.getContext("2d");
		ctx.beginPath();
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 0);
		ctx.lineTo(25, 50);
		ctx.lineTo(0, 50);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 0);
		ctx.fillStyle = "#28a745";
		ctx.fill();
	</script>
</body>
</html>