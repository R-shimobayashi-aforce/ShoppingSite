<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="Menu.jsp"%>
<%@page import="java.util.*, jp.co.aforce.beans.*, jp.co.aforce.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>最終購入確認</title>
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

.menu {
	height: 1000px;
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

body {
	font-size: 16px;
	font-family: 游ゴシック;
	clear: both;
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
	<table style="border-spacing: 10px;">

		 <c:set var="Total" value="${0}" />
		<c:forEach var="item" items="${cart}">
			<tr>
				<td>商品${item.product.item_id }</td>
				<td><img src="../img/${item.product.item_name}.jpg" height="120"></td>
				<td>${item.product.item_name}</td>
				<td>${item.product.price}円</td>
				<td>${item.count}個</td>
					
				
				 <c:set var="Total" value="${item.product.price * item.count}" />小計${Total}</tr>
		</c:forEach>


		
	</table>


<table style="border-spacing: 10px;">
	お客様情報を入力してください。
	<form action="Purchase.action" method="post">
		<p>
			お名前 <input required type="text" name="name" maxlength='100'>
		</p>
		<p>
			ご住所<input required type="text" name="address" maxlength='100'>
		</p>
			<input type="submit" name="purchase" value="購入確定" onclick="return confirm('購入を確定しますか？')">

	</form>
</table>

	
</body>
</html>