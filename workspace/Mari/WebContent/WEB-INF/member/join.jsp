<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
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
	width: auto;
	height: auto;
}

h1 {
	position: relative;
	font-size: 25px;
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
	padding: 20px 10px;
	margin-bottom: 10px;
	border: 1px solid #f1f1f1;
}

.addr-control{
	background-color: white;
	box-shadow: none;
	color: #565656;
	font-size: 14px;
	padding: 20px 0px ;
	margin-bottom: 5px;
	border: 1px solid #f1f1f1;
	width: 200px;
	height: 10px;
}

.addr-control2{
	background-color: white;
	box-shadow: none;
	color: #565656;
	font-size: 14px;
	padding: 20px 0px ;
	margin-bottom: 5px;
	border: 1px solid #f1f1f1;
	width: 400px;
	height: 10px;
	color: skyblue;
}

#postSearch{
	position:relative;
	bottom: 4px;
	right: 2px;
}

.addr-group button{
	position:relative; 
	top:6px;
	width: 80px;
	font-size: 10px;
}

 .inner-form {
	position: relative;
	left: 78px;
}

.form-group input {
	width: 400px;
	height: 3px;
}

input{
	height: 5px;
}

.btn {
	position: relative;
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

hr {
	height: 20px;
}

#result1,#result2{
	font-size: 10px;
	color: red;
}
/* 
.agree {
	border-bottom: 1px solid;
	padding-right: 260px;
	padding-top: 20px;
	padding-bottom: 10px;
}

.agree2 {
	border-bottom: 1px solid;
	padding-top: 20px;
	padding-bottom: 10px;
}

.list {
	padding-top: 20px;
}

.list2 {
	padding-top: 20px;
}

.agreeform {
	color: gray;
	filter: grayscale(40%);
	font-weight: 400;
	font-size: 15px;
} */


</style>
<script type="text/javascript">

$(document).ready(function() {

	/* $("form").on("submit",function(){
		
		swal({
			title : 'Read the alert!',
			text : '회원가입성공!',
			icon : 'success',
			confirmButtonText : 'OK',
			timer : 1500,
			}).then((result) => {
				if(result.isConfirmed){
					$("form").attr("action", "JoinServlet");
				}//end if
			})//end then
		
	})//end submit */
	
	//form click
	$("#subBtn").on("click", function(e) {
		var userid = $("#userid").val();
		var passwd = $("#passwd").val();
		if (userid.length == 0 || passwd.length == 0 || username.length == 0 || birth.length == 0 || phone.length == 0 || email.length == 0) {
			swal({
				title : 'Read the alert!',
				text : '내용을 확인해주세요',
				button : {
					text : "OK",
					value : true,
					visible : true,
					className : "btn btn-default"
				}
			})//end swal
			$(this).focus();
			return false;
		}//end if
		
	});//end click
	
	$("#passwd2").on("mouseout",function(){
		var pw = $("#passwd").val();
		var pw2 = $(this).val();
		var mesg = "";
		if (pw != pw2) {
			mesg = "비밀번호를 확인해주세요"
			$(this).focus();
		}
			$("#result2").text(mesg);
	});//end mouseout
	
	
	$("#userid").on("keyup",function(event){	
		 $.ajax({
				type : "GET",
				url : "IdCheckServlet",
				dataType : "text",
				data : {
					userid : $("#userid").val()
				},
				success : function(responseData, status, xhr) {
				    $("#result1").text(responseData);
				},
				error : function(xhr, status, error) {
					console.log("error");
				}
			});//end ajax
	});//end keyup
	
	
	
	
	
	
	

});//end fn
</script>
</head>
<body>

	<div class="login">
		<div class="container">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="inner-form">

					<h1>JOIN US</h1>

					<form action="JoinServlet" role="form" method="get">
						<div class="row">

							<div class="col-lg-12 col-xs-12">
								<label>가입정보 입력</label>
								<div class="form-group">
									<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디">
									<span id='result1'></span>
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="password" name="passwd" id="passwd" class="form-control" placeholder="비밀번호">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="password" name="passwd2" id="passwd2" class="form-control" placeholder="비밀번호 확인 ">
										 <span id='result2'></span>
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<!-- <label>생년월일</label> -->
								<div class="form-group">
									<input type="text" name="username" id="username" class="form-control" placeholder="이름">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">

								<!-- BIRTH_YY -->
								<div class="form-group">
									<input type="text" name="birth" id="birth" class="form-control"	maxlength="6" placeholder="생년월일(6자)">
								</div>


							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="text" name="phone" id="phone" class="form-control" maxlength="11" placeholder="휴대전화 ( ' - '제외 )">
								</div>
							</div>

							<div class="col-lg-12 col-xs-12">
								<div class="form-group">
									<input type="text" name="email" id="email" class="form-control" placeholder="이메일">
								</div>
							</div>
<!-- =============================================================================================================== -->
						<!-- 도로명주소 -->
						<div class="col-lg-12 col-xs-12">
								<div class="addr-group">
									<table>
									<tr>
									<td>
									<input type="text" id="sample4_postcode" name="post" placeholder="우편번호" class="addr-control">
									<button type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" name="post"class="addr-control2">
										<span id="postSearch">우편번호 찾기</span></button><br>
									<input type="text" id="sample4_roadAddress" name="addr1" placeholder="도로명주소" class="addr-control2"><br>
										<span id="guide" style="color:#999;display:none"></span>
									<input type="text" id="sample4_detailAddress" name="addr2" placeholder="상세주소" class="addr-control2"> 
									</td>										
									</tr>
									</table>
								</div>
							</div>
		










<!-- =============================================================================================================== -->

							

							<!-- 약관동의 -->
							<!-- <div class="col-lg-12 col-xs-12">
								<div class="agreeform">
									<table>


										<tr>
											<td class="agree">약관동의&nbsp;</td>
											<td class="agree2"><span class="custom-checkbox">
													전체동의 <input type="checkbox" id="selectAll" /> <label
													for="selectAll"></label>
											</span></td>
										</tr>

										<tr>
											<td class="list">14세 이상입니다.(필수)</td>
											<td class="list2"><span class="custom-checkbox">
													<input type="checkbox" id="selectAll" /> <label
													for="selectAll"></label>
											</span></td>
										</tr>

									</table>
								</div>
							</div> -->
							<!-- 약관동의 끝 -->



							<div class="col-lg-12 col-xs-12">
								<button type="submit" class="btn btn-default" id="subBtn">
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

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
                
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>	
</body>
</html>