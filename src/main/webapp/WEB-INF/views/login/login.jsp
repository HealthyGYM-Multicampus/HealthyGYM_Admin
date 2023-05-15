<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>건강해짐 관리자 페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript"></script>

<style type="text/css">
body{
background-color: #74b0d6;
}

.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.h-custom {
	height: calc(100% - 60px);
}

@media ( max-width : 720px) {
	.h-custom {
		height: 100%;
	}
}

.logo {
            width: 420x;
            height: 240px;
            background-image: src="./images/logout.png";
            background-size: contain;
            background-repeat: no-repeat;
            margin-top: 20px;
        }
</style>

</head>


<body>
	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div class="row d-flex justify-content-center align-items-center h-100">

				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" style="margin: auto; background-color: white; border-radius: 2em;">
					<form action="loginAf.do" method="post">
						
						<div class="divider d-flex align-items-center my-4">
							<img alt="img" src="./images/logo.png?v=1" width="294px" height="69px">
						</div>
						
						<div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
							<p style="margin: auto; font-size:larger "><b>관리자 페이지</b></p>
						</div>
						<br>

						<!-- id input -->
						<div class="form-outline mb-4">
							이메일 <input type="text" id="email" name="email" class="form-control form-control-lg" placeholder="이메일" />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							비밀번호 <input type="password" id="pwd" name="pwd" class="form-control form-control-lg" placeholder="비밀번호" />
						</div>

						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-warning btn-block" style="padding-left: 1.5rem; padding-right: 1.5rem; color: white;">로그인</button>
							<p class="small fw-bold mt-2 pt-1 mb-0">
								<a href="regi.do" class="link-danger"><b>관리자 계정 생성</b></a>
							</p>
							<br>
						</div>
					</form>

				</div>
			</div>
		</div>

	</section>








</body>
</html>





