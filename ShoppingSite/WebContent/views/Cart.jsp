<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="Menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート</title>
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

<script>
<!--
let cartList=[];

$(()=>{
	$('.cartBtn').on('click', addCart);
});

let addCart =(event)=>{
	let tdList = $(event.target).parent().parent().find('td');
	let item_id = $(tdList[0]).text();
	let item_name = $(tdList{1}).text();
	let price = $(tdList{2}).text();
 	let count =$(tdList[3]).find('input').val();
 	
 	if (count === '0' || count === ''){
 		alert('注文数が0または空欄です');
 		return;
 	}
 	
 	let cart = {
 			'item_id':item_id,
 			'item_name':item_name,
 			'price':price,
 			'count':count
 	};
 	cartList.push(cart);
 	
 	let tbody = $('#cart').find('tbody');
 	$(tbody).children().remove();
 	cartList.forEach(function(cart,index){
 		let tr = $('<tr />');
 		$('<td />',{'text':cart.item_id}).appendTo(tr);
 		$('<td />',{'text':cart.item_name}).appendTo(tr);
 		$('<td />',{'text':cart.price}).appendTo(tr);
 		$('<td />',{'text':cart.count}).appendTo(tr);
 		let tdButton = $('<td />');
 		$('<button />',{
 			'text':"カート削除",
 			'class':'removeBtn',
 		})appendTo(tdButton);
 		
 		$(tdButton).appendTo(tr);
 		$(tr).appendTo(tbody);
 		});
 	$('.removeBtn').on('click', removeCart);
 	
 };
-->
</script>




</head>
<body>
	<c:choose>
		<c:when test="${cart.size()>0 }">
			<p>${cart.size()}種類の商品がカートに入っています。</p>
		</c:when>

		<c:otherwise>
			<p>カートに商品がありません。
		</c:otherwise>

	</c:choose>


	<table style="border-collapse: separate; border-spacing: 1-px;">
		<c:forEach var="item" items="${cart}">
			<tr>
		<td>商品${item.product.item_id}</td>
	
				<td><img src="../img/${item.product.item_name }.jpg"
					height="96"></td>
					<td>${item.product.item_name}</td>
				<td>${item.count}個</td>
				<td><form action="" method="post">
						<select name="count"><c:forEach var="i" begin="0" end="9">
								<option value"${i}">${i}</option></c:forEach></select>
								<input type="submit" value="個数変更">
					</form></td>
				<td><a href="CartRemove.action?id=${item.product.item_id}">カートから削除</a></td>
			</tr>
		</c:forEach>
	</table>


	<a href="../jp.co.aforce.servlets/Preview.action" method="post">購入画面へ</a>
	<a href="../views/login_out.jsp" method="post">商品一覧</a>

</body>
</html>