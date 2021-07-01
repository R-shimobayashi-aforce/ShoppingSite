<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<style>
body {
	height: 10rem;
  	text-align: center;
	font-size: 16px;
	font-family: 游ゴシック;
	padding-top: 90px;
}

header {
	position: absolute;
	position: fixed;
	z-index: 10;
	top: 0px;
	width: 100%;
	height: 60px;
	line-height: 60px;
	background-color: #D2A3CB;
}

.logo {
	float: left;
	width: 200px;
	padding-left: 10px;
	color: white;
	font-size: 25px;
	line-height: 60px;
	padding-left: 10px;
}

.center {
	height: 10rem;
	text-align: center;
}
</style>

</head>
<body>
	<header>
		<div class="logo">Flower</div>
	</header>
	<div class="center">UserIDまたはパスワードが違います。</div>
	<p><a href="../views/index.jsp" method="post">TOPへ戻る</a></p>
</body>
</html>