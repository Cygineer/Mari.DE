<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

html, body{
		padding: 0;
		margin: 0;
		width: 100%;
		height: 100%;
	}

 .nav-container {
 	flex-direction: row;
 	width: 100%;
 	margin: 0;/*쓸데없는공백제거*/
 	padding: 0;/*쓸데없는공백제거*/
 	background-color: orange;
 	list-style-type: none;/*목록기호제거*/
 	text-align: center;
 }
 
 .nav-item {
 	padding: 15px;
 	
 	cursor: pointer;
 }
 
 .nav-item a {
 	text-align: center;
 	text-decoration: none;/*밑줄없앰*/
 	color: white;
 }
 
 .nav-item:hover {
}

 .nav-container li {
 	display: inline;
 }
 
  .nav-container a {
 	display: inline-block;
 	padding: 15px;
 }
 

 
 
 
 
	

</style>

</head>
<body>


	<nav>
		<ul class="nav-container">
			<li class="nav-item"><a href="#">New5%</a></li>
			<li class="nav-item"><a href="#">All</a></li>
			<li class="nav-item"><a href="#">Best10</a></li>
			<li class="nav-item"><a href="#">Earring</a></li>
			<li class="nav-item"><a href="#">Necklace</a></li>
			<li class="nav-item"><a href="#">Bracelet</a></li>
			<li class="nav-item"><a href="#">Ring</a></li>
			<li class="nav-item"><a href="#">Event</a></li>
			<li class="nav-item"><a href="#">Q&A</a></li>
		</ul>
	</nav>

</body>
</html>