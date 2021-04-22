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
	
	header{/*헤더 사이즈 늘림 */	
		height: 160px;
		
	}
	
	.logo img{/* 로고이미지 크기수정 */
		width: 170px;
		height: 170px;
		margin-left: auto;
	}
	.logo {/* 로고이미지 들어가는 영역 크기수정 */
		width: 120px;
		height: 120px;
		display: block;
		margin-left: auto;
		margin-right: auto; 
	}
	
	div.topMenu :hover {/* 헤더 탑메뉴에 마우스 올리면 색변화 */
		text-align: right;
		color:orange;
		-webkit-filter: grayscale(60%);
	}
	div.topMenu {/* 헤더 탑메뉴 우측상단으로 수정 */
		float:right;
		position: relative;
		bottom: 100px;
	}
	
	#topnav{/* 카테고리 네비바에 마우스오버시 효과 */
		background-color: orange;
		-webkit-filter: grayscale(60%);
		display: block; 
		
		margin-left: auto;
		margin-right: auto;
		
	}
	#topnav a{/* 카테고리 네비바 안의 텍스트수정*/
		float: left;
		padding: 10px 12px;
		text-decoration: none;
		font-size: 17px;
	}
	#topnav a:hover {
		color: orange;
	}

</style>
</head>
<body>
<!--  -->
<header>

	<div class="logo">
	<img src="common/image/logo.png">
	</div>
	
	<div class="topMenu">
		<button type="button" class="btn btn-link">Login</button>
		<button type="button" class="btn btn-link">Join</button>
		<button type="button" class="btn btn-link">Mypage</button>
		<button type="button" class="btn btn-link">Cart(3)</button>
	</div>
	
	

	
	
</header>

	
	
	<ul id="topnav" class="nav justify-content-center bg-light">
	 	<li class="nav-item"> <a class="nav-link" href="#">New5%</a> </li>
		<li class="nav-item"> <a class="nav-link" href="#">Best10</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#">Earring</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#">Necklace</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#">Bracelet</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#">Ring</a> </li>
	</ul>


</body>
</html>