<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
	position: relative;
	font-size:25px;
	font-weight: 600;
	font-family: 'Josefin Sans', sans-serif;
	text-transform: capitalize;
	text-align: left;
	color: gray;
	filter: grayscale(40%);
	padding: 25px 0px;
	left: 145px;
	bottom: 25px;
}

label {
	color: gray;
	filter: grayscale(40%);
	font-weight: 400;
	font-size: 15px;
}

.form-control {
	background-color: white;
	box-shadow: none;
	color: #565656;
	font-size: 14px;
	padding: 30px 10px;
	margin-bottom: 0px;
	border: 1px solid #f1f1f1;
	
}

.inner-form {
	position: relative;
	left: 36px;
}


.form-group input{
	width: 400px;
	height: 3px;
}


.btn {
	position:relative;
	background: orange;
	filter: grayscale(40%);
	color: #FFF;
	border-radius: 6px;
	margin: 0 auto;
	height: 48px;
	line-height: 38px;
	display: table;
	font-size: 15px;
	width: 400px;
	right: 70px;
}

.btn:hover {
	background: #FFF;
	border: 2px solid #24acb3;
}

.forgot {
	text-align: center;
	margin-top: 30px;
	font-size: 16px;
}

.forgot a {
	color: gray;
	filter: grayscale(40%);
}


hr{
	height: 20px;
}


.agree{
	border-bottom: 1px solid;
	padding-right:260px; 
	padding-top:20px;
	padding-bottom: 10px;
}
.agree2{
	border-bottom: 1px solid;
	padding-top:20px;
	padding-bottom: 10px;
}
.list{
	padding-top: 20px;
}
.list2{
	padding-top: 20px;
}


.agreeform{
	color: gray;
	filter: grayscale(40%);
	font-weight: 400;
	font-size: 15px;
}



</style>
<script type="text/javascript">

$(document).ready(function() {

	//form 서브밋
	$("form").on("submit", function() {
		var userid = $("#userid").val();
		var password = $("#password").val();
		if (userid.length == 0) {
			swal({
				title : 'Read the alert!',
				text : '아이디를 확인해주세요',
				button : {
					text : "OK",
					value : true,
					visible : true,
					className : "btn btn-default"
				}
			})//end swal
			$("#userid").focus();
			return false;
		} else if (password.length == 0) {
			swal({
				title : 'Read the alert!',
				text : '비밀번호를 확인해주세요',
				button : {
					text : "OK",
					value : true,
					visible : true,
					className : "btn btn-default"
				}
			})//end swal
			return false;
		}
	});//end submit

});//end fn
</script>
</head>
<body>

	<div class="login">
		<div class="container">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="inner-form">

					<h1>JOIN US</h1>

					<form action="JoinServlet" role="form">
						<div class="row">

							<div class="col-lg-12 col-xs-12">
								<label>가입정보 입력</label>
								<div class="form-group">
									<input type="text" name="userid" id="userid"
										class="form-control" placeholder="아이디">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="password" name="password" id="password"
										class="form-control" placeholder="비밀번호">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="password" name="password2" id="password2"
										class="form-control" placeholder="비밀번호 재확인 ">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<!-- <label>생년월일</label> -->
								<div class="form-group">
									<input type="text" name="username" id="username"
										class="form-control" placeholder="이름">
								</div>
							</div>
							
							<div class="col-lg-12 col-xs-12">
							
								<!-- BIRTH_YY -->
								<div class="form-group">
									<input type="text" name="birth" id="birth"
										class="form-control" maxlength="6" placeholder="생년월일(6자)">
								</div>
								
								
							</div>
							
							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="text" name="phone" id="phone"
										class="form-control" maxlength="11" placeholder="휴대전화">
								</div>
							</div>
							
							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="text" name="email" id="email"
										class="form-control" placeholder="이메일(선택)">
								</div>
							</div>
							
							<!-- 약관동의 -->							
							<div class="col-lg-12 col-xs-12">
								<div class="agreeform">
								<table>
								
								
								<tr>
									<td class="agree">약관동의&nbsp;</td>
									<td class="agree2">
										<span class="custom-checkbox">
											전체동의
											<input type="checkbox" id="selectAll"/>
											<label for="selectAll"></label>
										</span>
									</td>
								</tr>
								
								<tr>
									<td class="list">14세 이상입니다.(필수)</td>
									<td class="list2">
										<span class="custom-checkbox">
											<input type="checkbox" id="selectAll"/>
											<label for="selectAll"></label>
										</span>
									</td>
								</tr>
								
								</table>
								</div>
							</div>
							<!-- 약관동의 끝 -->
							
							
							
							<div class="col-lg-12 col-xs-12">
								<button type="submit" class="btn btn-default">
									<span>회원가입</span>
								</button>
							</div>
							
							


						</div>
					</form>

				</div>
				<!-- inner-form -->
			</div>
		</div>
	</div>
</body>
</html>