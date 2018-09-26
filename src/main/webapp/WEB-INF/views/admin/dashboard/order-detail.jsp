<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Thông tin đơn hàng</title>
<style type="text/css">
td{vertical-align: middle !important;}
</style>
</head>
<body>
	<div class="container-fluid wrapper p-0">
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content p-0">
			<div class="row manager-title d-flex bd-highlight p-3">
				<div class="mr-auto bd-highlight">
					<h5>Thông tin đơn hàng</h5>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item p-0">
					<div class="row">
						<form id="form-update" class="w-40 ml-3" action="updateOrder"
							method="post">
							<table class="w-100">
								<tr>
									<td class="pt-3">Mã hóa đơn :</td>
									<td id="orderId" class="pt-3">${orderDetail.id}</td>
									<td class="pt-3 pl-5">Khách hàng :</td>
									<td class="pt-3">${orderDetail.username }</td>
									<td class="pt-3 pl-5">Ngày tạo:</td>
									<td class="pt-3">${orderDetail.dateCreate }</td>
								</tr>
								<tr>
									<td class="pt-3">Tổng tiền:</td>
									<td class="pt-3">${orderDetail.totalPrice }</td>
									<td class="pt-3 pl-5">Phí vận chuyển :</td>
									<td class="pt-3">30000</td>
									<td class="pt-3 pl-5">Trạng thái :</td>
									<td class="pt-3"><select class="btn btn-w"
										id="Category-select">
											<option ${(orderDetail.status eq 'Đang xử lý')?'selected':'' }>Đang
												xử lý</option>
											<option ${(orderDetail.status eq 'Đang giao hàng')?'selected':'' }>Đang
												giao hàng</option>
											<option ${(orderDetail.status eq 'Đã giao hàng')?'selected':'' }>Đã
												giao hàng</option>
											<option ${(orderDetail.status eq 'Đã hủy')?'selected':'' }>Đã
												hủy</option>
									</select></td>
								</tr>
								<tr>
									<td class="pt-3">SĐT khách hàng :</td>
									<td class="pt-3">${orderDetail.phone }</td>
									<td class="pt-3 pl-5">Địa chỉ :</td>
									<td class="pt-3">${orderDetail.shipAddress }</td>
									<td colspan="2" class="pt-3 pl-5 center"><button
											type="button" id="btn-update" class="btn btn-primary">Cập
											nhật</button></td>
								</tr>
							</table>
						</form>
					</div>
					<!-- product-->
					<div class="row top10-label">
						<div class="col-3 d-flex align-items-center">
							<strong>Sản phẩm đã mua</strong>
						</div>
					</div>
					<table id="productTable" class="table">
						<thead class="thead-light">
							<tr>
								<th class="" scope="col">STT</th>
								<th class="" scope="col">Mã sản phẩm</th>
								<th class="w-15" scope="col"></th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Đơn giá</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Khối lượng</th>
								<th scope="col">Thành tiền</th>
							</tr>
						</thead>
						<tbody id="table">
							<c:forEach var="o" varStatus="stt" items="${orderDetail.orderDetails }">
								<tr>
									<th scope="row">${stt.index+1 }</th>
									<td>${o.productId.id }</td>
									<td><img class="img-fluid" width="50%"
										src="resources/images/${o.productId.image }" alt="" /></td>
									<td>${o.productId.name }</td>
									<td>${o.price }</td>
									<td>${o.amount }</td>
									<td>${o.productId.amount }</td>
									<td>${o.price * o.productId.amount *o.amount }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/filter.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/validate.js"></script>
	<script type="text/javascript">
		$('.deleteOrder').click(
				function() {
					var id = $(this).data('id');
					$('#form-delete').attr('action',
							'deleteOrder.action?orderNo=' + id);
				});
	</script>
	<script type="text/javascript">
		$('#btn-update').click(
				function() {
					var stt = $('#orderStt').val();
					var id = $('#orderId').text();
					$('#form-update').attr(
							'action',
							'updateOrder.action?orderNo=' + id + '&status='
									+ stt);
					$('#form-update').submit();
				});
	</script>
</body>
</html>