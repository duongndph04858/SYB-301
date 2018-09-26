<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" type="text/css"
	href="resources/css/product-management.css">
</head>
<body>
	<div class="container-fluid wrapper p-0">
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content p-0">
			<div class="row manager-title w-100 p-3">
				<div class="mr-auto bd-highlight">
					<h5>
						<!-- Product management -->
						Quản lý sản phẩm
					</h5>
				</div>
				<a href="admin/dashboard/product/insert-product"
					class="btn btn-primary bd-highlight mr-3"> Thêm sản phẩm mới </a>
				<div class="dropdown">
					<a class="btn btn-default dropdown-toggle" role="button"
						id="ProductAction" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Thao tác khác </a>
					<div class="dropdown-menu  bd-highlight"
						aria-labelledby="ProductAction">
						<a class="dropdown-item a-black"> Xuất danh sách </a> <a
							class="dropdown-item a-black"> Xóa sản phẩm </a>
					</div>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item p-0">
					<div class="row top10-label">
						<div class="col-3 d-flex align-items-center">
							<span> Tổng số sản phẩm: </span>&nbsp; <strong>${not empty listP?listP.size():0 }
								sản phẩm </strong>
						</div>
						<div class="col-4">
							<input class="form-control" id="searchBox" type="text"
								placeholder="Search...">
						</div>
						<div class="col-5">
							<div class="row">
								<div class="dropdown">
									<select class="btn btn-w" id="Category-select"
										name="categoryId">
										<option selected="selected">Chọn danh mục...</option>
										<option>ABC</option>
										<option>ABC</option>
									</select>
								</div>
								<div class="dropdown">
									<select class="btn btn-w" id="Status-select" name="status">
										<option>ABC</option>
										<option>ABC</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<table id="productTable" class="table">
						<thead class="thead-light">
							<tr>
								<th class="" scope="col"></th>
								<th class="" scope="col">STT</th>
								<th width="12%" scope="col">Mã sản phẩm</th>
								<th width="10%" scope="col"></th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Khối lượng</th>
								<th scope="col">Đơn giá (VNĐ)</th>
								<th scope="col">Đơn vị tính</th>
								<th scope="col">Danh mục</th>
								<th scope="col">Số lượng đóng gói</th>
								<th scope="col">Đơn vị đóng gói</th>
								<th scope="col">Trạng thái</th>
								<th class="" scope="col">Thao tác</th>
							</tr>
						</thead>
						<tbody id="table">
							<c:if test="${listP.size()>0 }"></c:if>
							<c:forEach var="p" items="${listP}" varStatus="stt">
								<tr>
									<td><input type="checkbox"></td>
									<th scope="row">${stt.index+1 }</th>
									<td id="product-id">${p.id }</td>
									<td><img class="imgProduct" width="95%"
										src="resources/images/${p.image }" alt="" /></td>
									<td>${p.name }</td>
									<td>${p.amount}</td>
									<td>${p.price}</td>
									<td>${p.priceUnit }</td>
									<td>${p.categoryId.name }</td>
									<td>${p.amountUnit }</td>
									<td>${p.amountUnitType }</td>
									<td>${p.status }</td>
									<td><a id="icon-update" href=""> <i
											class="fa fa-pencil icon-action" aria-hidden="true"></i></a>
										&nbsp; <a id="icon-delete" class="dltProduct"
										data-id="${p.id }"> <i class="fa fa-trash-o icon-action"
											data-toggle="modal" data-target="#deleteProductModal"
											aria-hidden="true"></i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<nav aria-label="Page navigation example p-3">
						<ul class="pagination">
							<c:if test="${page2>1 }">
								<c:forEach varStatus="stt" begin="0" end="${page2}">
									<li class="page-item"><a class="page-link"
										href="admin/dashboard/product/product-management?start=${stt.index*10 }">
											<span aria-hidden="true">${stt.index+1 }</span>
									</a></li>
								</c:forEach>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Notice -->
	<c:if test="${not empty notice }">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">Thông báo</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<span>${notice}</span>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<!-- Modal Delete -->
	<div class="modal fade" id="deleteProductModal" tabindex="-1"
		role="dialog" aria-labelledby="deleteProductModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteProductModal">Xóa sản phẩm</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Bạn thực sự muốn xóa sản phẩm này?</div>
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
	<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
</body>
</html>