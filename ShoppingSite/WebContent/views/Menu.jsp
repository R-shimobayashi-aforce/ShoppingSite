<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Flower</title>
<link rel="canonical" href="http://localhost:8080/ShoppingSite/views/Cart.jsp">
</head>

<body>
	<header>
		<div class="logo">Flower</div>

		<ul>
			<li>こんにちは、${customer.user_name}さん</li>



		<input type="button" name="logout" value="ログアウト" onclick="logout()">



		</ul>

	</header>



	<script>
function logout(){
	if(confirm("ログアウトしますか？")==true){
		location.href = "Logout.action";
	}
}
</script>

</body>
</html>