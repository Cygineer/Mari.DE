<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.MemberDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
<title>Insert title here</title>
<style type="text/css">

#outform{
	border: 1px solid #AAAAAA; 
	border-radius: 30px 30px;
	width: 60%;
	margin-bottom: 50px;
}

#container{
}


#title{
	font-weight: 550;
	font-size:30px;
	font-family: 'Josefin Sans', sans-serif;
	text-transform: capitalize;
	text-align: center;
	color: gray;
	filter: grayscale(40%);
	position:relative;
	left:2px;
	padding-top: 60px;
	padding-bottom: 20px;	
	}
	
.btn1{
	background-color:orange;
	filter: grayscale(40%);
	border: none;
}	
.btn2{
	background-color:skyblue;
	filter: grayscale(40%);
	border: none;
}	

.form-control{
	position: relative;
	left: 30px;
}
.text-black{
	position: relative;
	text-align:left;
	right: 250px;
	font-size: 15px;
}
.text-addr{
	position: relative;
	font-size: 15px;
	right: 145px;
}
#subInfo{
	position: relative;
	left: 1px;
	width: 95%;
}

</style>
</head>
<body>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("login");
%>

 <form method="post" name="updateform">
  <div class="site-section" align="center">
      <div class="container" id="container">
       
        <div class="row">
          <div class="col-md-12 mb-5 mb-md-0">
          <div align="center">
            <h1 class="h3 mb-3 text-black" id="title">회원정보</h1>
           </div>
             <br>
             
             
             
            <div class="p-3 p-lg-5" id="outform">
          
 			<!--아이디-->
              <div class="form-group row">
               <div class="col-md-11">
             	 <div class="form-group">
             	 <br><br>
              	  <label for="c_country" class="text-black">아이디&nbsp;&nbsp;</label>
             	  <input type="text" id="userid" class="form-control" name="userid" value="<%=dto.getUserid() %>">
          	    </div>
             </div>
            </div>         
            
           
             
             <!--이름-->
              <div class="form-group row">
               <div class="col-md-11">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
             	  <input type="text" id="username" class="form-control" name="username" value="<%=dto.getUsername() %>">
          	    </div>
             </div>
            </div>
             <!-- <span class="text-danger">*</span> -->

             
            <!--생년월일-->
              <div class="form-group row">
               <div class="col-md-11">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">생년월일</label>
             	  <input type="text" id="birth" class="form-control" name="birth" value="<%=dto.getBirth() %>" maxlength="6">
          	    </div>
             </div>
            </div>
               
              <!--휴대전호-->
              <div class="form-group row">
               <div class="col-md-11">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">휴대전화</label>
             	  <input type="text" id="phone" class="form-control" name="phone" value="<%=dto.getPhone() %>" maxlength="11">
          	    </div>
             </div>
            </div>
           
  			<!--이메일-->
              <div class="form-group row">
               <div class="col-md-11">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">이메일&nbsp;&nbsp;</label>
             	  <input type="text" id="email" class="form-control" name="email" value="<%=dto.getEmail() %>">
          	    </div>
             </div>
            </div> 
            
            
             <!--주소-->
             

 			<div class="form-group row">
            	<div class="col-md-7">
            		<div class="form-group">
                		<label for="c_diff_address" class="text-addr">주소</label>
                   		 <input type="text" class="form-control" name="post" id="post" value="<%=dto.getPost() %>" placeholder="우편번호">
                   	</div>
                </div>
                <div class="col-md-3">
                    <label for="c_diff_address" class="text-black"><br></label>
                    <input type="button" class="form-control" onclick="sample4_execDaumPostcode()" value="주소찾기">
                </div>
           </div>

              <div class="form-group row">
              	<div class="col-md-11">
                	<input type="text" class="form-control" name="addr1" id="addr1" value="<%=dto.getAddr1() %>" placeholder="주소">
             	</div>
             </div>
              <div class="form-group row">
              	<div class="col-md-11">
               		<input type="text" class="form-control" name="addr2" id="addr2" value="<%=dto.getAddr2()%>" placeholder="상세주소">
				</div>              	
              </div>
             

                  
            		<div class="form-group row" id="subInfo">
                      
                      <div class="col-md-6">
                         <button type="button" class="btn1 btn-primary btn-lg py-3 btn-block">회원정보수정</button>
                         <!-- button 타입이 submit일 경우 자동으로 새로고침되서  팝업창이 자동종료됨 -->
                      </div>
                      <div class="col-md-6">
                         <button type="button" class="btn2 btn-primary btn-lg py-3 btn-block">취소</button><br>
                      </div>
                      
                        
             
                    </div>


             
            </div>
          </div>
   
        </div>
        <!-- </form> -->
      </div>
    </div>
   </form>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
	$(document).ready(function(){
			
			 $(".btn1").on("click",function(){

				 Swal.fire({
		                title: '회원정보가 변경되었습니다.',
		                text: "You read the alert!",
		                icon: 'success',
		                confirmButtonColor: '#3085d6',
		                confirmButtonText: '확인'
		            }).then((result) => {
		                if (result.isConfirmed) {
							$.ajax({
								type:"post",
								url:"InfoUpdateServlet",
								data:{
									"username":$('#username').val(),
									"userid":$('#userid').val(),
									"post":$('#post').val(),
									"addr1":$('#addr1').val(),
									"addr2":$('#addr2').val(),
									"phone":$('#phone').val(),
									"birth":$('#birth').val(),
									"email":$('#email').val()
								},
								success:function(){
									location.href="MyPageServlet";
								},
								error:function(){
								}
							});//ajax
		                }//if
		            });//then

		        });//end form
			
			
		
		        });//end fn




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
                document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullRoadAddr;
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
			$("fullRoadAddr").on("click",function(){
				self.opener = self;
				window.close();
			})
                
            }//onComplete
        }).open();//postCode
                
    }
</script>	
</body>
</html>