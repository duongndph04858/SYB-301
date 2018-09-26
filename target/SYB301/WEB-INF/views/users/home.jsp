<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body class="container-fluid">
	<jsp:include page="paterns/_header.jsp"></jsp:include>
	<div class="wrapper-top">
		<div class="img-cover-content-top">
			<img src="resources/images/img-cover1.png" alt="" width="100%" />
		</div>
		<div class="img-cover-content-bottom">
			<img src="resources/images/img-cover2.png" alt="" width="100%" />
		</div>
		<div class="row title mt-2">
			<p class="w-100 title-label">Seafood</p>
		</div>
		<div class="content-top row d-flex justify-content-center">
			<div class="col-2 content-item">
				<div class="content-item-top">
					<div class="thumb-content-item m-auto" style="background-image: url('resources/images/1.png');">
					</div>
				</div>
				<div class="content-item-bottom">
					<h4>Luôn tươi mới 100%</h4>
					<br />
					<p class="description">Chúng tôi đảm bảo hải sản chúng tôi cung
						cấp luôn ở trạng thái tươi mới nhất!</p>
				</div>
			</div>
			<div class="col-2 content-item">
				<div class="content-item-top">
					<div class="thumb-content-item m-auto" style="background-image: url('resources/images/3.png');">
					</div>
				</div>
				<div class="content-item-bottom">
					<h4>Cam kết chất lượng</h4>
					<br />
					<p class="description">Chúng tôi cam kết các hàng hóa luôn đảm
						bảo vệ sinh an toàn thực phẩm!</p>
				</div>
			</div>
			<div class="col-2 content-item">
				<div class="content-item-top">
					<div class="thumb-content-item m-auto" style="background-image: url('resources/images/2.png');">
					</div>
				</div>
				<div class="content-item-bottom">
					<h4>Luôn tư vấn tận tâm</h4>
					<br />
					<p class="description">Chúng tôi có đội ngũ chăm sóc khách hàng
						chuyên nghiệp và nhiệt tình sẵn sàng hỗ trợ 24/7!</p>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper-bottom">
		<div class="img-cover-about-top">
			<img src="resources/images/img-cover6.png" alt="" width="100%" />
		</div>
		<div class="img-cover-about-bottom">
			<img src="resources/images/img-cover5-1.png" alt="" width="100%" />
		</div>
		<div class="img-cover-about-left-bottom">
			<img src="resources/images/img-cover4.png" alt="" width="100%" />
		</div>
		<div class="row back-space"></div>
		<div class="about">
			<div class="row title p-5">
				<p class="w-100 title-label">Về chúng tôi</p>
			</div>
			<div class="row about-content col-5 m-auto p-5">
				<p class="about-paragraph"> Chúng tôi là cửa hàng buôn bán hải
					sản tươi- sạch. Chuyên cung cấp các loại hải sản đảm bảo chất lượng
					đến tay người tiêu dùng.</p>
				<p class="about-paragraph">Sản phẩm chủ yếu: Các mặt hàng hải
					sản tươi sống.</p>
				<p class="about-paragraph">Với hệ thống thu mua trực tiếp từ các
					ngư dân từ vùng biển Hạ Long. Trực tiếp chọn lọc kỹ lưỡng để mang
					đến cho người tiêu dùng những sản phẩm tươi ngon nhất.</p>
				<p class="about-paragraph">Tất các các sản phẩm bán ra đều được
					chúng tôi kiểm tra chất lượng rất khắt khe từ khâu chọn lọc, bảo
					quản.</p>
			</div>
		</div>
	</div>
	<div class="mission-wrapper row">
		<div class="row title p-2 mb-3 w-100">
			<p style="text-align: center; color: #000" class="w-100 title-label">Sứ
				mệnh</p>
		</div>
		<div class="mission-item col-3">
			<div class="mission row">
				<div class="col-6 p-0">
					<div class="mission-thumb"></div>
				</div>
				<div class="col-6 p-0">
					<div class="mission-text">Cung cấp sản phẩm hàng đầu cho
						khách hàng</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3">
			<div class="mission row">
				<div class="col-6 p-0">
					<div class="mission-thumb"></div>
				</div>
				<div class="col-6 p-0">
					<div class="mission-text">Góp phần tạo nên giá trị hải sản Hạ
						Long đến tay người dùng</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3">
			<div class="mission row">
				<div class="col-6 p-0">
					<div class="mission-thumb"></div>
				</div>
				<div class="col-6 p-0">
					<div class="mission-text">Tạo cơ hội phát triển cho cư dân
						miền biển</div>
				</div>
			</div>
		</div>
		<div class="mission-item col-3">
			<div class="mission row">
				<div class="col-6 p-0">
					<div class="mission-thumb"></div>
				</div>
				<div class="col-6 p-0">
					<div class="mission-text">Luôn đồng hành cùng chất lượng sản
						phẩm</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="paterns/_footer.jsp"></jsp:include>
</body>
</html>