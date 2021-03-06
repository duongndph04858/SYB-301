<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Giỏ hàng</title>
<link rel="stylesheet" href="resources/css/cart.css">
</head>
<body class="container-fluid">
	<jsp:include page="paterns/_header.jsp"></jsp:include>
	<div class="content-wrapper row">
		<div class="cart-content">
			<div class="cart-nav-bar d-flex justify-content-between">
				<div class="cart-nav-item bg-danger w-100 text-white">
					<a class="number-border-radius border-white"> 1 </a> &nbsp; Giỏ
					hàng
				</div>
				<div class="canvas-arrow">
					<canvas id="first-triangle" width="25" height="50">
        </canvas>
				</div>
				<div class="cart-nav-item w-100">
					<a class="number-border-radius "> 2 </a> &nbsp; Thông tin giao hàng
				</div>
				<div class="canvas-arrow">
					<canvas id="second-triangle" width="25" height="50">
        </canvas>
				</div>
				<div class="cart-nav-item w-100">
					<a class="number-border-radius"> 3 </a> &nbsp; Phương thức thanh
					toán
				</div>
			</div>
			<div class="cart-product-table">
				<div class="row cart-total-product-label">
					Bạn có &nbsp;<strong> ${cart.size()} sản phẩm </strong>&nbsp; trong
					giỏ hàng
				</div>
				<table class="table">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Đơn giá</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Khối lượng</th>
							<th scope="col">Đơn vị tính</th>
							<th scope="col">Thành tiền</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty cart }">
								<c:forEach var="s" items="${cart}" varStatus="stt">
									<tr class="item">
										<th class="align-center" scope="row"><a
											href="remove-to-cart?pID=${s.value.products.id}"> <i
												class="fa fa-times-circle text-secondary" aria-hidden="true"></i></a></th>
										<td class="w-120"><img class="img-fluid"
											src="resources/images/${s.value.products.image }" alt="" /></td>
										<td>${s.value.products.name }</td>
										<td>${s.value.products.price }</td>
										<td>${s.value.quantity }</td>
										<td>${s.value.products.amount }</td>
										<td>${s.value.products.priceUnit }</td>
										<td class="total-price">${s.value.products.amount*s.value.quantity * s.value.products.price}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
							<h2 class="pl-3 text-danger">Bạn chưa có sản phẩm nào trong giỏ hàng!</h2>
						</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<div class="justify-content-between row pr-5 mb-2 m-0">
					<div class="col-3 pl-4">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">
										Previous </a></li>
								<li class="page-item"><a class="page-link" href="#"> 1
								</a></li>
								<li class="page-item"><a class="page-link" href="#"> 2
								</a></li>
								<li class="page-item"><a class="page-link" href="#"> 3
								</a></li>
								<li class="page-item"><a class="page-link" href="#">
										Next </a></li>
							</ul>
						</nav>
					</div>
					<div class="col-2">
						<h5 class="">Tổng cộng: ${not empty cart?total:0 }</h5>
					</div>
				</div>
			</div>
			<div class="table-button">
				<div class="justify-content-between row">
					<div class="col-3 pl-5">
						<a href="home"> <i
							class="fa fa-chevron-circle-left bg-white text-dark"
							aria-hidden="true"></i> Tiếp tục mua sắm
						</a>
					</div>
					<div class="col-2">
						<form action="order-info">
							<button type="submit" class="btn btn-success">
								Thanh toán <i class="fa fa-chevron-right" aria-hidden="true"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${not empty notice }">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">Thông báo!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="errors">
							<span id="erMessage"> ${notice } </span>
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
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 50);
		ctx.fillStyle = "#dc3545";
		ctx.fill();
		ctx.strokeStyle = "#aaa";
		ctx.stroke();

		var c = document.getElementById("second-triangle");
		var ctx = c.getContext("2d");
		ctx.moveTo(0, 0);
		ctx.lineTo(25, 25);
		ctx.lineTo(0, 50);
		ctx.strokeStyle = "#aaa";
		ctx.stroke();
	</script>
</body>
</html>