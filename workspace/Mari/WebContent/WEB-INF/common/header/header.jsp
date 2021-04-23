<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style type="text/css">

/*	html, body{
		margin: 0;
		width: 100%;
		height: 100%;
	}*/
header { /*헤더 사이즈 늘림 */
	height: 160px;
	
}

.logo img { /* 로고이미지 크기수정 */
	width: 190px;
	height: 190px;
	margin-left: auto;
}

.logo { /* 로고이미지 들어가는 영역 크기수정 */
	width: 120px;
	height: 120px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

div.topMenu :hover { /* 헤더 탑메뉴에 마우스 올리면 색변화 */
	color: orange;
	-webkit-filter: grayscale(60%);
}

div.topMenu { /* 헤더 탑메뉴 우측상단으로 수정 */
	display:flex;
	text-align: center;
	position: relative;
	bottom: 115px;
	right:80px;
	float: right;
	width: 400px;
    margin: 0 auto;
}
.content {
	display: flex;
}

/*
=======================================================================
*/



.container {
	position:relative;
	float: right;
	left: 950px;
	bottom: 154px;
}


.container .search {
	position: absolute;
	top: 0;
	right:0;
	bottom: 0;
	left: 0;
	width: 25px;
	height: 25px;
	background: crimson;
	border-radius: 35%;
	z-index: 4;
}



.container .search::before { /*search의 막대부분*/
	content: "";
	position: absolute;
	margin: auto;
	top: 6px;
	right: 0;
	bottom: 0;
	left: 7px;
	width: 5px;
	height: 2px;
	background: white;
	transform: rotate(45deg);
	transition: all 0.5s;
}

.container .search::after { /*search의 동그라미부분*/
	content: "";
	position: absolute;
	margin: auto;
	top: -2px;
	right: 0;
	bottom: 0;
	left: -2px;
	width: 10px;
	height: 10px;
	border-radius: 50%;
	border: 2px solid white;
	transition: all 0.5s;
}





















</style>
</head>
<body>
<!--  -->
<header>

	<!-- 로고이미지 -->
	<div class="logo">
	<img src="image/logo.png">
	</div>
	
	<!-- 탑메뉴 카테고리 -->
	<div class="topMenu">
	 
		<div><button type="button" class="btn btn-link"><p class="content">Login</p></button></div>
		<div><button type="button" class="btn btn-link"><p class="content">Join</p></button></div>
		<div><button type="button" class="btn btn-link"><p class="content">Mypage</p></button></div>
		<div><button type="button" class="btn btn-link"><p class="content">Cart(3)</p></button></div>
			
	</div>
	
	
	<form action=""  class="container">
		<div>
			<div><button type="button" class="search"></button></div>
			<div><input type="text" class="text"></input></div>			
		</div>
	</form>
		
	


	
	


	
</header>

	
	


</body>
</html>