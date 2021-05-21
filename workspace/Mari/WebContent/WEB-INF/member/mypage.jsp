<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
img[name=img]:hover {
	cursor: pointer;
}
img[name=img]{
	margin: 10px;
}
.mypage {
	font-weight: 550;
	font-family: 'Josefin Sans', sans-serif;
	text-transform: capitalize;
	text-align: center;
	color: gray;
	filter: grayscale(40%);
	padding-top: 60px;
	padding-bottom: 20px;
}
.innerform{
	width: 50%;
	height:45%;
	background-color: #f4f4f4;
	padding-bottom: 80px;
}


</style>
</head>
<body>
<div align="center" style="position:relative; top:25px;">

		<div class="innerform">
			<h1 class="mypage">Mypage</h1><hr>
			<img style="border:1px solid darkgray;" name="img" src="image/mypage/board.jpeg">
			<img style="border:1px solid darkgray;" name="img" src="image/mypage/info.jpeg"
				onclick="location.href='info.jsp'">
			<img style="border:1px solid darkgray;" name="img" src="image/mypage/cart.jpeg">
			<img style="border:1px solid darkgray;" name="img" src="image/mypage/order.jpeg">
				<%-- onclick="location.href='${contextPath}/mypage/myReviewList.do'"> --%>
		</div>
	
</div>
</body>
</html>