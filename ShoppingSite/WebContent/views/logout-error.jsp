<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>二重ログアウト</title>
<style>
body {
	height: 10rem;
  	text-align: center;
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
すでにログアウトしています。

<p>再度<a href="../views/index.jsp" method="post">ログイン</a>する</p>
</body>
</html>