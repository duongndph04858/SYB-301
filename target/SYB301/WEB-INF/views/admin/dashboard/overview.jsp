<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tổng quan</title>
</head>
<body>
	<div class="container-fluid wrapper p-0">
		<!--header-->
		<jsp:include page="paterns/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content p-0">
			<div class="row manager-title p-3">
				<h5>Tổng quan</h5>
			</div>
			<div class="row content-top p-0">
				<div class="content-top-item">
					<div style="margin: 0; padding: 0 40px;" class="row">
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i
											class="fa fa-check-square-o fa-2x" aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số sản phẩm <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-list-ol fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số đơn hàng <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-list-alt fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số danh mục <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-users fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số khách hàng <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-money fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Thu nhập tháng này <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--top10 product-->
					<div class="row mt-4">
						<h6>Top 10 sản phẩm</h6>
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th class="" scope="col"></th>
									<th class="" scope="col">Mã sản phẩm</th>
									<th class="" scope="col">Ảnh</th>
									<th scope="col">Tên sản phẩm</th>
									<th width="15%" scope="col">Lượt đặt hàng</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="80%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>10</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="80%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>9</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="80%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>8</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="resources/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>