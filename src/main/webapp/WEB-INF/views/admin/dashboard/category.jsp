<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Quản lý danh mục</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/category-management.css">
</head>
<body>
	<div class="container-fluid wrapper p-0">
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>Quản lý danh mục</h5>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item p-0">
					<!--INSERT CATEGORY-->
					<h6 class="mt-4 pl-4">Thêm danh mục mới</h6>
					<div class="row top10-label pl-4">
						<form action="admin/dashboard/category/insert-category">
							<table>
								<tr>
									<td></td>
									<td><span class="text-danger">${idErr}</span></td>
									<td></td>
									<td><span class="text-danger">${nameErr}</span></td>
									<td></td>
								</tr>
								<tr>
									<td>Mã danh mục :</td>
									<td><input type="text" name="id" class="form-control"></td>
									<td class="pl-3">Tên danh mục :</td>
									<td><input type="text" name="name" class="form-control"></td>
									<td><button id="btn-insertCategory" type="submit"
											class="btn btn-primary">Thêm</button></td>
								</tr>
							</table>
						</form>
					</div>
					<div>
						<h6 class="pl-4 mt-3 mb-3">Danh mục hiện có:</h6>
						<table id="productTable" class="table">
							<thead class="thead-light">
								<tr>
									<th class="" scope="col">Số thứ tự</th>
									<th class="" scope="col">Mã danh mục</th>
									<th scope="col">Tên danh mục</th>
									<th scope="col">Tổng số sản phẩm hiện có</th>
									<th class="" scope="col">Thao tác</th>
								</tr>
							</thead>
							<tbody id="table">
								<c:if test="${not empty listC }">
									<c:forEach var="c" varStatus="stt" items="${listC}">
										<tr>
											<th scope="row">${stt.index+1 }</th>
											<td>${c.id }</td>
											<td>${c.name }</td>
											<td>${c.products.size() }</td>
											<td><a class="editCategory" data-name="" data-id="">
													<i class="fa fa-pencil icon-action" aria-hidden="true"
													data-toggle="modal" data-target="#editCategory"></i>
											</a>&nbsp; <a class="dltCategory" data-id=""><i
													class="fa fa-trash-o icon-action" data-toggle="modal"
													data-target="#deleteCategory" aria-hidden="true"></i></a></td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--delete Modal -->
		<div class="modal fade" id="deleteCategory" tabindex="-1"
			role="dialog" aria-labelledby="deleteCategory" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteCategory">Xóa danh mục</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Bạn thực sự muốn xóa danh mục này ?</div>
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
	</div>
	<!-- Modal Notice -->
	<c:if test="${not empty notice }">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">Thêm thành công!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Thêm danh mục mới thành công</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>

	</c:if>
	<!-- Modal Edit Category -->
	<div class="modal fade" id="editCategory" tabindex="-1" role="dialog"
		aria-labelledby="editCategory" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="editCategory">Sửa danh mục</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="form-update" action="" method="post">
						<table class="w-100">
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td><span>Tên danh mục mới : </span></td>
								<td><input class="form-control" type="text"
									id="category-name" name="categoryName" /></td>
							</tr>
							<tr>
								<td style="text-align: center" class="pt-3" colspan="2">
									<button id="btn-update" style="height: 38px;" type="submit"
										class="btn btn-primary">Cập nhật</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Hủy</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/filter.js"></script>
	<script type="text/javascript" src="resources/js/category.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
</body>
</html>