<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm sản phẩm mới</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/resources/css/insert-product.css">
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<div class="container-fluid wrapper p-0">
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content p-0">
			<div class="row manager-title w-100 p-3">
				<h5>Thêm sản phẩm mới</h5>
			</div>
			<div class="row w-100">
				<div class="row content-top w-100 m-0">
					<div style="width: 80%" class="row content-top-item">
						<form action="admin/dashboard/product/insert"
							enctype="multipart/form-data" method="post" class="w-100">
							<table class="w-100" style="margin: auto;">
								<!--  NAME-->
								<tr class="error-field">
									<td><label>Tên sản phẩm</label> <input required="required"
										type="text" class="form-control" name="name"></td>
									<td colspan="2"><label>Danh mục</label> <select
										name="category" class="custom-select">
											<option selected="selected">Chọn danh mục...</option>
											<c:if test="${listC.size()>0 }">
												<c:forEach var="c" items="${listC }">
													<option value="${c.id }">${c.name }</option>
												</c:forEach>
											</c:if>
									</select></td>
									<td class="" rowspan="4">
										<div class="img-product row">
											<diV class="img-border">
												<div id="img-thumb"></div>
											</div>
											<div class="img-upload">
												<input required="required" type="file" id="inputFile"
													onchange="updateImageDisplay();" name="image"
													class="mt-3 w-100" />
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td><label>Khối lượng</label> <input required="required"
										type="text" class="form-control" name="amount"></td>
									<td><label>Đơn vị tính</label> <select name="priceUnit"
										class="custom-select">
											<option selected="selected">Chọn đơn vị...</option>
											<option value="Kg">Kg</option>
									</select></td>
								</tr>

								<tr>
									<td><label>Số lượng đóng gói</label> <input
										required="required" type="text" class="form-control"
										name="amountUnit"></td>
									<td><label>Đơn vị đóng gói</label> <select
										name="amountUnitType" class="custom-select">
											<option selected="selected">Chọn đơn vị...</option>
											<option value="Con">Con</option>
											<option value="Kg">Kg</option>
									</select></td>
								</tr>

								<tr>
									<td><label>Chất lượng</label> <select name="quality"
										class="custom-select">
											<option selected="selected">Chọn chất lượng...</option>
											<option value="1">Loại 1</option>
											<option value="2">Loại 2</option>
											<option value="3">Loại 3</option>
									</select></td>
									<td><label>Đơn giá</label> <input required="required"
										type="text" class="form-control" name="price"></td>
								</tr>
								<tr>
									<td class="button-cover" colspan="4">
										<button type="submit" class="btn btn-primary">Thêm</button>
										&nbsp; <a href="admin/dashboard/product/product-management?start=0"
										class="btn btn-secondary">Hủy</a>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/imgPreview.js"></script>
</body>
</html>