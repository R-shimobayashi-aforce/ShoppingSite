<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
body {
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

	<div class="center">
	<p><img src="../img/Flower.jpg" height="300"></p>
		会員様　ログイン

		<form action="../jp.co.aforce.servlets/Login.action" method="post">
			<p>
				UserID<input required type="text" name="user_id" maxlength='8'>
			</p>
			<p>
				Password<input required type="password" name="password">
			</p>
			<p>
				<input type="submit" value="Login">
			</p>
		</form>
	</div>

</body>
</html>

