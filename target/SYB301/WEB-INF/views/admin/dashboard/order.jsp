<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý đơn hàng</title>
<style type="text/css">
th {
	font-size: 14px !important;
}
</style>
</head>
<body>
	<div class="container-fluid wrapper p-0">
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content p-0">
			<div class="row manager-title d-flex bd-highlight p-3">
				<div class="mr-auto bd-highlight">
					<h5>Quản lý đơn hàng</h5>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item p-0">
					<!--top10 product-->
					<div class="row p-3">
						<div class="col-3 d-flex align-items-center">
							<span>Tổng số đơn hàng:</span>&nbsp; <strong>${not empty listO?listO.size():0 }</strong>
						</div>
						<div class="col-4">
							<input class="form-control" id="searchBox" type="text"
								placeholder="Search...">
						</div>
						<div class="col-5">
							<div class="row">
								<div class="dropdown">
									<select class="btn btn-w" id="Category-select">
										<option selected="selected">Chọn địa chỉ...</option>
										<option>ABC</option>
										<option>ABC</option>
									</select>
								</div>
								<div class="dropdown">
									<select class="btn btn-w" id="Category-select">
										<option selected="selected">Chọn tình trạng...</option>
										<option>Đang xử lý</option>
										<option>Đang giao hàng</option>
										<option>Đã giao hàng</option>
										<option>Đã hủy</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<table id="productTable" class="table">
						<thead class="thead-light">
							<tr>
								<th class="" scope="col">STT</th>
								<th class="" scope="col">Mã đơn hàng</th>
								<th scope="col">Tổng tiền</th>
								<th scope="col">Phí vận chuyển</th>
								<th scope="col">Khách hàng</th>
								<th scope="col">Trạng thái</th>
								<th scope="col">Địa chỉ</th>
								<th scope="col">SĐT người nhận</th>
								<th scope="col">Ngày tạo</th>
								<th class="" scope="col">Thao tác</th>
							</tr>
						</thead>
						<tbody id="table">
							<c:if test="${not empty listO }">
								<c:forEach var="o" varStatus="stt" items="${listO}">
									<tr>
										<th scope="row">${stt.index+1 }</th>
										<td>${o.id}</td>
										<td>${o.totalPrice}</td>
										<td>30000</td>
										<td>${o.username}</td>
										<td>${o.status }</td>
										<td>${o.shipAddress }</td>
										<td>${o.phone}</td>
										<td>${o.dateCreate }</td>
										<td><a class="editOrder"
											href="OrderDetail.action?orderNo"> <i
												class="fa fa-pencil icon-action" aria-hidden="true"></i>
										</a>&nbsp; <a class="deleteOrder" data-id=""> <i
												class="fa fa-trash-o icon-action" data-toggle="modal"
												data-target="#deleteOrderModal" aria-hidden="true"></i></a></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="deleteOrderModal" tabindex="-1"
		role="dialog" aria-labelledby="deleteOrderModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteOrderModal">Xóa đơn hàng</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Bạn thực sự muốn xóa đơn hàng?</div>
				<div class="modal-footer">
					<form id="form-delete" action="" method="post">
						<button type="submit" class="btn btn-danger">Xóa</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Hủy</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- <s:if test="hasActionErrors()">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">
							<s:text name="head.notice"></s:text>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="errors">
							<span id="erMessage"> <s:actionerror />
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

	</s:if> -->
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
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
</body>
</html>