<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<c:if test="${not empty product }">
	<title>${product.get(0).categoryId.name}</title>
</c:if>
<link rel="stylesheet" href="resources/css/product.css">
</head>
<body class="container-fluid">
	<jsp:include page="paterns/_header.jsp"></jsp:include>
	<div class="content-wrapper row">
		<c:if test="${not empty product}">
			<c:forEach var="p" items="${product}" varStatus="index">
				<div class="col-4">
					<div class="product-wrapper row">
						<div class="product-properties col-6">
							<h5 class="product-name">${p.name }</h5>
							<h4 class="product-price">${p.price }đ</h4>
							<div class="product-description">
								<span>Loại: Loại ${p.quality } </span> <br /> <span>Số
									lượng: ${p.amountUnit}&nbsp;${p.amountUnitType } </span> <br /> <span>Khối
									lượng: ${p.amount} KG </span>
							</div>
							<div class="add-to-cart w-100 mt-3 pl-2">
								<a href="addToCart?pID=${p.id}">
									<button class="btn btn-warning">Thêm vào giỏ hàng</button>
								</a>
							</div>
						</div>
						<div class="col-6 d-flex align-items-center p-2">
							<div class="product-thumb">
								<div class="product-img"
									style="background-image: url('resources/images/${p.image}')"></div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="col-12 d-flex justify-content-end mt-4">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${page>1 }">
							<c:forEach varStatus="stt" begin="0" end="${page}">
								<li class="page-item"><a class="page-link"
									href="product?start=${stt.index*9 }&category=${product.get(0).categoryId.id }">
										<span aria-hidden="true">${stt.index+1 }</span>
								</a></li>
							</c:forEach>
						</c:if>
					</ul>
				</nav>
			</div>
		</c:if>
	</div>
	<div class="mission-wrapper row">
		<div class="row title p-2 w-100">
			<p style="text-align: center; color: #000; font-size: 24px"
				class="w-100 title-label">Top 10 sản phẩm bán chạy nhất</p>
		</div>
		<div class="mission-item col-3 p-0">
			<div class="mission row">
				<div class="col-6">
					<div class="mission-thumb">
						<img width="100%" src="resources/images/img-cover5.png" alt="">
					</div>
				</div>
				<div class="col-6 p-0">
					<div class="row">
						<div class="mission-text">
							<span>Tôm hùmmmmmmm</span><br /> <span
								style="color: red; font-size: 20px">1.000.000 đ</span>
						</div>
					</div>
					<div class="row">
						<button class="btn border-dark">Xem thêm</button>
					</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3 p-0">
			<div class="mission row">
				<div class="col-6">
					<div class="mission-thumb">
						<img width="100%" src="resources/images/img-cover5.png" alt="">
					</div>
				</div>
				<div class="col-6 p-0">
					<div class="row">
						<div class="mission-text">
							<span>Tôm hùmmmmmmm</span><br /> <span
								style="color: red; font-size: 20px">1.000.000 đ</span>
						</div>
					</div>
					<div class="row">
						<button class="btn border-dark">Xem thêm</button>
					</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3 p-0">
			<div class="mission row">
				<div class="col-6">
					<div class="mission-thumb">
						<img width="100%" src="resources/images/img-cover5.png" alt="">
					</div>
				</div>
				<div class="col-6 p-0">
					<div class="row">
						<div class="mission-text">
							<span>Tôm hùmmmmmmm</span><br /> <span
								style="color: red; font-size: 20px">1.000.000 đ</span>
						</div>
					</div>
					<div class="row">
						<button class="btn border-dark">Xem thêm</button>
					</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3 p-0">
			<div class="mission row">
				<div class="col-6">
					<div class="mission-thumb">
						<img width="100%" src="resources/images/img-cover5.png" alt="">
					</div>
				</div>
				<div class="col-6 p-0">
					<div class="row">
						<div class="mission-text">
							<span>Tôm hùmmmmmmm</span><br /> <span
								style="color: red; font-size: 20px">1.000.000 đ</span>
						</div>
					</div>
					<div class="row">
						<button class="btn border-dark">Xem thêm</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="paterns/_footer.jsp"></jsp:include>
</body>
</html>