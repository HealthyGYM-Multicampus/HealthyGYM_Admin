<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin page</title>
<style type="text/css">
* {
	font-family: "Malgun Gothic", cursive;
}



h1, h2, h3 {
	margin: 0;
}

a {
	text-decoration: none !important;
}

a:hover {
	color: red !important;
}

.logo {
	position: fixed;
	background: #74b0d6;
	width: 320px;
	float: left;
	height: 90px;
}

.header {
	color: white;
	position: fixed;
	height: 120px;
	margin-left: 300px;
	background: #74b0d6;
	height: 90px;
	width: calc(100% - 300px);
}

.menu {
	float : left;
	height: 100%;
	width: 20%;
	float: left;
	/* background-color: gray; */
}

.content {
	float: left;
	height: 100%;
	width: 80%;
	
}


.float {
	position: fixed;
	margin-top: 120px;
	width: 100vw;
	height: 100vh;
}
</style>
</head>
<body>

	<!-- header -->
	<div class="logo">
		<tiles:insertAttribute name="logo" />
	</div>
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>


	<!-- main -->

	<div class=float>
		<div class="menu">
			<tiles:insertAttribute name="menu" />
		</div>
		<div class="content">
			<tiles:insertAttribute name="content" />
		</div>
	</div>


</body>
</html>






