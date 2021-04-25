<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">

html, body{
		padding: 0;
		margin: 0;
		width: 100%;
		height: 100%;
		font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
   		font-size: 14px;
   		color: #337ab7;
   		line-height: 1.42857143;
   		-webkit-text-size-adjust: 100%;
	}
header { /*헤더 사이즈 늘림 */
	height: 150px;
	
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



div.topMenu { /* 헤더 탑메뉴 우측상단으로 수정 */
	position: relative;
	bottom: 108px;
	right:80px;
	float: right;
	width: 400px;
	
}

.topMenu li {
	list-style: none;
	padding-right:35px;
	display: inline;
}



/*
=======================================================================
*/

div fieldset img{

	width: 20px;
	height: 20px;

}

.topMenu #keyword{
	width: 90px;
	height: 20px;
	font-family: inherit;
    font-size: inherit;
    line-height: inherit;
    
    
	
}

.topMenu #searchBarForm{
	position:relative;
	float: right;
	left: 65px;
	bottom: 19px;
	color: inherit;
    font: inherit;
    margin: 0;
}



</style>
</head>
<body>

<header>

<!-- 로고이미지 -->
	<div class="logo">
	<a href="MainServlet"><img src="image/logo.png"></a>
	</div>
	
	<!-- 탑메뉴 카테고리 -->
	<div class="topMenu">
	  <div>
		<ul>
			<li><a href=MainServlet>Home</a></li>
			<li><a href="LoginUIServlet">Login</a></li>
			<li><a href="#">Mypage</a></li>
			<li><a href="#">Cart(3)</a></li>
			<li>
				<form id="searchBarForm" action="#" method="get">
							<fieldset>
								<input id="keyword" name="keyword" value type="text">
									<a href="#"><img alt="검색" src="image/Search-Button.png"></a>
							</fieldset>
				</form>
			 </li>
			 
			 
		 </ul>
	  </div> 
	</div>	  
	
	
	


	
</header>






</body>
</html>
