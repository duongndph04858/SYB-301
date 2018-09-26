<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Thông tin đơn hàng</title>
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
									<td id="orderId" class="pt-3">1</td>
									<td class="pt-3 pl-5">Khách hàng :</td>
									<td class="pt-3">abc</td>
									<td class="pt-3 pl-5">Ngày tạo:</td>
									<td class="pt-3">1/1/2018</td>
								</tr>
								<tr>
									<td class="pt-3">Tổng tiền:</td>
									<td class="pt-3">1</td>
									<td class="pt-3 pl-5">Phí vận chuyển :</td>
									<td class="pt-3">1</td>
									<td class="pt-3 pl-5">Trạng thái :</td>
									<td class="pt-3"><select class="btn btn-w"
										id="Category-select">
											<option selected="selected">Đang xử lý</option>
											<option>Đang giao hàng</option>
											<option>Đã giao hàng</option>
											<option>Đã hủy</option>
									</select></td>
								</tr>
								<tr>
									<td class="pt-3">SĐT khách hàng :</td>
									<td class="pt-3">123456789</td>
									<td class="pt-3 pl-5">Địa chỉ :</td>
									<td class="pt-3">Hà Nội</td>
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
								<th scope="col">Thành tiền</th>
							</tr>
						</thead>
						<tbody id="table">
							<tr>
								<th scope="row">1</th>
								<td>1</td>
								<td><img class="img-fluid" width="50%"
									src="images/<s:property value="#o.products.image" />" alt="" /></td>
								<td>aaa</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
							</tr>
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