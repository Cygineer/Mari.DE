<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#topnav{/* 카테고리 네비바에 마우스오버시 효과 */
		background-color: orange;
		-webkit-filter: grayscale(60%);
		margin: auto;
		
	}
	
	#topnav a{/* 카테고리 네비바 안의 텍스트수정*/
	
		flex-direction:row;
		padding-top:10px;
		text-decoration: none;
		font-size: 17px;
		display: block; 
		width: 150px;
		height: 40px;
		text-align: center;
		
	}
	
	#topnav li {
		margin: 0 0 0 0;
		padding: 0 0 0 0;
		border: 0;
		float: left;
	}
	#topnav a span {
		display: block; 
	}
	
	#topnav a:hover {
		color: orange;
	}
	

</style>

</head>
<body>



	<ul id="topnav" class="nav justify-content-around bg-light">
	 	<li class="nav-item"> <a class="nav-link" href="#"><span></span>New5%</a> </li>
		<li class="nav-item"> <a class="nav-link" href="#"><span></span>Best10</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#"><span></span>Earring</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#"><span></span>Necklace</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#"><span></span>Bracelet</a> </li>
	    <li class="nav-item"> <a class="nav-link" href="#"><span></span>Ring</a> </li>
	</ul>


</body>
</html>