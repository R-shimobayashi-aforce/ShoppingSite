<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="Menu.jsp" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>

<title>Flower</title>
<link href="/Main.css" th:href="@{/Main.css}" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
body {
	font-size: 16px;
	font-family: 游ゴシック;
	padding-top:90px;
}

header {
	position: absolute;
	position: fixed;
	z-index:10;
	top: 0px;
	width: 100%;
	height: 60px;
	line-height:60px;
	background-color: #D2A3CB;
}

.menu {
	height:1000px;
	float: left;
	width: 200px;
	padding-left: 10px;
	color: white;
	font-size: 16px;
	line-height: 60px;
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

header ul {
	float: right;
	line-height: 40px;
}

header ul li {
	float: left;
	list-style: none;
	padding-right: 20px;
	color: white;
	font-size: 18px;
}

.login input[type="submit"] {
	border: none;
	background: #D2A3CB;
	text-decoration: underline;
	color: white;
}

main {
height: 10rem;
  text-align: center;
	font-size: 16px;
	font-family: 游ゴシック;
	clear: both;
}

.main-container {
height: 10rem;
  text-align: center;
	width: 90%;
	margin: 0 auto;
}


footer {
	clear: left;
	width: 100%;
	height: 60px;
	position: absolute;
		position: fixed;
	bottom: 0px;
	left: 0px;
	color: black;
	background-color: white;
	text-align: center;
	line-height: 60px;
}
       
      
    </style>
</head>

<body>
	
	<main><p><img src="../img/Top.jpg" height="300"></p>
		<div class="main-container">
			
			検索
			<form action="../jp.co.aforce.servlets/Search.action" method="post">
				<input type="text" name="keyword"> <input type="submit"
					value="Search">
			</form>
			<button onClick="location.href='../jp.co.aforce.servlets/Product.action';">商品一覧</button>
			<button onClick="location.href='../views/Cart.jsp';">カート</button>
		</div>




	</main>

	<footer>copyright(c)</footer>
</body>



</html>

