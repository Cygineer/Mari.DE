<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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
	font-weight: 600;
	font-family: 'Josefin Sans', sans-serif;
	text-transform: capitalize;
	text-align: center;
	color: gray;
	filter: grayscale(40%);
	padding: 25px 0px;
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
	margin-bottom: 30px;
	border: 1px solid #f1f1f1;
}

.inner-form {
	position: relative;
	right: 38px;
}

.btn {
	background: orange;
	filter: grayscale(40%);
	color: #FFF;
	border-radius: 6px;
	margin: 0 auto;
	height: 48px;
	line-height: 38px;
	display: table;
	font-size: 15px;
	width: 100%;
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
</style>


</head>
<body>
	

	<div class="login">
		<div class="container">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="inner-form">

					<h1>Login</h1>

					<form action="LoginServlet" role="form" method="post">
						<div class="row">

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="text" name="userid" id="userid"
										class="form-control" placeholder="아이디를 입력하세요">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="password" name="passwd" id="passwd"
										class="form-control" placeholder="비밀번호를 입력하세요">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<button type="submit" id="login" class="btn btn-default">
									<span>로그인</span>
								</button>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="forgot">
									<p>
										Forgot Password or Email ? <a href="">click here!</a>
									</p>

								</div>
							</div>

						</div>
					</form>

				</div>
				<!-- inner-form -->
			</div>
		</div>
	</div>
	
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
<script type="text/javascript">

	$(document).ready(function() {
		
		
		//login click
		$("#login").on("click", function() {
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			if (userid.length == 0) {
				swal({
					title : 'Read the alert!',
					text : '아이디를 입력해주세요',
					button : {
						text : "OK",
						value : true,
						visible : true,
						className : "btn btn-default"
					}
				})//end swal
				$("#userid").focus();
				return false;
			} else if(passwd.length == 0) {
				swal({
					title : 'Read the alert!',
					text : '비밀번호를 입력해주세요',
					button : {
						text : "OK",
						value : true,
						visible : true,
						className : "btn btn-default"
					}
				})//end swal
				$("#passwd").focus();
				return false;
				/*
				} else if (userid.length != 0 && passwd.length != 0) {
				$.ajax({
					type:"post",
					url:"LoginCheckServlet",
					data:{
						"userid":$('#userid').val(),
						"passwd":$('#passwd').val(),
					},
					 dataType: "json",
		             contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		             success : function(data, status, xhr) {
		            	 for ( var i in data.login) {
		                        var login = data.login[i];
							if(login == null){
							swal({
								title : 'Read the alert!',
								text : '아이디 및 비밀번호가 일치하지 않습니다.',
								button : {
									text : "OK",
									value : true,
									visible : true,
									className : "btn btn-default"
								}
							})//end swal
						}//if
							}
					},
					error:function(){
					}
				});//ajax
				*/
				
			}//else
			
			
			
		});//end submit
		
		
	});//end fn

</script>
</body>
</html>