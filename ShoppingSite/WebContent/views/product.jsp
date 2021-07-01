<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@include file="Menu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果</title>

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


.table {
height: 10rem;
  text-align: center;
	width: 90%;
	margin: 0 auto;
	margin-top: 70px;
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


<table style="border-collapse:separate;border-spacing:10px;">
<form name="irekae" method="get" id="sort_form" class="sort_form">
        <select name='narabi' onChange="document.forms['irekae'].submit()" >
          　<option value="sort1" selected="selected" >商品番号順</option>
            <option value="sort2" >値段が安い順</option>
            <option value="sort3" >値段が高い順</option></select>
</form>
<c:forEach var="product" items="${list}">
<tr><td>商品${product.item_id}</td>
<td><img src="../img/${product.item_name}.jpg" height="120"></td>

<td>${product.item_name }</td>
<td>${product.price }円</td>
<td><a href="CartAdd.action?id=${product.item_id }">カートに追加</a></td>
</tr>
</c:forEach>
</table>

<script>
	const selectElement = document.querySelector('#js-sort');
	var url = new URL(window.location.href);

	selectElement.addEventListener('change', (event) => {
		var value = event.target.value;
		if( url.searchParams.get('sort') ) {
			var params = url.searchParams;
			params.delete('sort');
			history.replaceState('', url.pathname);
		}
		url.searchParams.append('sort', value);
		var paramstr = url.searchParams;
		location.href = location.origin+"/?"+paramstr;
	});
</script>


</body>
</html>


