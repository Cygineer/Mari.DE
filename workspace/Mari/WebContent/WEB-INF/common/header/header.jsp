<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.MemberDTO"%>    
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
		
   		line-height: 1.42857143;
   		-webkit-text-size-adjust: 100%;
	}
.category{
font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
   		font-size: 14px;
   		color: #337ab7;
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
.logo a{
	position:relative;
	right: 26px;
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
	padding-right:20px;
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
	<a href="MainServlet"><img src="image/common/logo.png"></a>
	</div>
	
	<!-- 탑메뉴 카테고리 -->
	<div class="topMenu">
	  <div>
		<ul>
			<%
				MemberDTO login = (MemberDTO)session.getAttribute("login");
				System.out.println(login);
				if(login != null){//로그인정보 있을때
			%>
		 
			<li><a href=MainServlet class="category">Home</a></li>
			<li><a href="LogoutServlet" class="category">Logout</a></li>
			<li><a href="MyPageServlet" class="category">Mypage</a></li>
			<li><a href="#" class="category">Order</a></li>
			<li><a href="#" class="category">Cart(3)</a></li>
			
			<%
				}else{//로그인정보 없을때
			%>
			
			<li><a href=MainServlet class="category">Home</a></li>
			<li><a href="LoginUIServlet" class="category">Login</a></li>
			<li><a href="JoinUIServlet" class="category">Join</a></li>
			<li><a href="LoginUIServlet" class="category">Mypage</a></li>
			<li><a href="#" class="category">Cart(3)</a></li>
			
			<%
				}
			%>
			
			
			<li>
				<form id="searchBarForm" action="#" method="get">
							<fieldset>
								<input id="keyword" name="keyword" value type="text">
									<a href="#"><img alt="검색" src="image/common/Search-Button.png"></a>
							</fieldset>
				</form>
			 </li>
			 
			 
		 </ul>
	  </div> 
	</div>	  
	
	
	


	
</header>






</body>
</html>

