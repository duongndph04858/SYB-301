<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
</head>
<body>
	<c:if test="${not empty welcome }">
		<div class="modal fade" id="loginSuccess" tabindex="-1" role="dialog"
			aria-labelledby="loginSuccess" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="loginSuccessTitle">Đăng nhập
							thành công!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 130.2 130.2"> <circle class="path circle"
								fill="none" stroke="#73AF55" stroke-width="6"
								stroke-miterlimit="10" cx="65.1" cy="65.1" r="62.1" /> <polyline
								class="path check" fill="none" stroke="#73AF55" stroke-width="6"
								stroke-linecap="round" stroke-miterlimit="10"
								points="100.2,40.2 51.5,88.8 29.8,67.5 " /> </svg>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#loginSuccess').modal("show");
			setTimeout(function() {
				$('#loginSuccess').modal("hide");
				$('#loginSuccess').css('z-index', '-1')
			}, 2000);
		});
	</script>
</body>
</html>