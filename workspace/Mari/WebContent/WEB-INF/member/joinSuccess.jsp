<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.MemberDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700')
	;

.login {
	font-family: 'Josefin Sans', sans-serif;
	background: #f4f4f4;
	padding: 70px 0px;
}

h1 {
	font-weight: 450;
	font-family: 'Josefin Sans', sans-serif;
	font-size:40px;
	text-transform: capitalize;
	text-align: center;
	color: gray;
	filter: grayscale(40%);
}
h2 {
	font-weight: 550;
	font-family: 'Josefin Sans', sans-serif;
	font-size:20px;
	text-transform: capitalize;
	text-align: center;
	color: skyblue;
	filter: grayscale(20%);
}

.inner-div{
	text-align: center;
	
}
.main{
	position:relative;
	background-color: skyblue;
	font-size: 15px;
	color:white;
	filter: grayscale(40%);
	padding: 15px 15px 10px 15px;
	top:20px;
	border-radius: 5px;
}
.main:hover{
	text-decoration: none;
}
.Alogin{
	position:relative;
	background-color: orange;
	font-size: 15px;
	color:white;
	filter: grayscale(50%);
	padding: 15px 15px 10px 15px;
	top:20px;
	border-radius: 5px;
}
.Alogin:hover{
	text-decoration: none;
}



.inner-form {
	position: relative;
	right: 38px;
}

.joinTB{
	position: relative;
	background-color: white;
	filter: grayscale(40%);
	width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
    margin-bottom: 10px;
}
 th, td {
    border: 1px solid #444444;
    padding: 15px;
  }



</style>
</head>
<body>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("join");
%>

<div class="login">
		<div class="container">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="inner-form">
					
					<h1>Register Successful!</h1>
					<h2>회원가입이 완료 되었습니다!</h2><hr>
					
					
					<table class="joinTB">
						<tr>
							<th colspan="3">저희 쇼핑몰을 이용해 주셔서 감사합니다.</th>						
						</tr>
						<tr>
							<td>ID</td>
							<td><%=dto.getUserid()%></td>
						</tr>
						<tr>
							<td>NAME</td>
							<td><%=dto.getUsername()%></td>
						</tr>
						<tr>
							<td>EMAIL</td>
							<td><%=dto.getEmail()%></td>
						</tr>
					</table>
					
					
					<div class="inner-div">
					<a href="LoginUIServlet" class="Alogin">로그인</a>
					<a href="MainServlet" class="main">메인으로 이동</a>
					</div>
					
				</div>
				<!-- inner-form -->
			</div>
		</div>
	</div>
<%
	session.removeAttribute("join");
%>	
</body>
</html>