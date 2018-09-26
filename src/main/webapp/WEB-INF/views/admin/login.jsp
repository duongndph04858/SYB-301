<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="resources/css/login.css">
</head>
<body>
	<div
		class="row container-fluid align-items-center d-flex justify-content-center bg">
		<div class="col-4">
			<div class="row logo">
				<img alt="" src="resources/images/logo.png" width="60px"
					class="m-auto">
			</div>
			<div class="row login">
				<div class="content">
					<div id="login-form">
						<form class="w-100" action="admin/authentication" method="post">
							<table class="w-90">
								<tr class="bd-bt">
									<td class="pt-5"><i class="fa fa-user" aria-hidden="true"></i></td>
									<td class="pt-5"><input type="text" class="w-100  bd-none"
										name="username" /></td>
								</tr>
								<tr>
									<td colspan="2">
										<!-- error message for username --> <span class="text-danger">${userErr}</span>
									</td>
								</tr>
								<tr class="bd-bt">
									<td class="pt-4"><i class="fa fa-lock" aria-hidden="true"></i></td>
									<td class="pt-4"><input type="password"
										class="w-100 bd-none" name="password" /></td>
								</tr>
								<tr>
									<td colspan="2"><span class="text-danger">${passErr}</span>
									</td>
								</tr>
								<tr>
									<td class="p-3" colspan="2"><a href="${fogotPassword}">Quên
											mật khẩu</a></td>
								</tr>
								<tr>
									<td class="center" colspan="2"><button type="submit"
											class="w-90 btn btn-primary" id="btn-login">Đăng
											nhập</button></td>
								<tr>
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
</body>
</html>