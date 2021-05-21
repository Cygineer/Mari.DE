<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.MemberDTO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">

#outform{
	border: 1px solid #AAAAAA; 
	border-radius: 30px 30px;
	width: 60%;
}

#container{
}


#title{
	font-weight: 550;
	font-family: 'Josefin Sans', sans-serif;
	text-transform: capitalize;
	text-align: center;
	color: gray;
	filter: grayscale(40%);
	padding-top: 60px;
	padding-bottom: 20px;	
	}
	
.btn1{
	background-color:orange;
	filter: grayscale(40%);
	
}	
.btn2{
	background-color:skyblue;
	filter: grayscale(40%);
}	

.outform{
}

</style>
</head>
<body>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("login");
%>

 <form action="${contextPath}/member/memberupdate.do" method="post" name="updateform">
  <div class="site-section" align="center">
      <div class="container" id="container">
       
        <div class="row">
          <div class="col-md-12 mb-5 mb-md-0">
          <div align="center">
            <h1 class="h3 mb-3 text-black" id="title">회원정보수정</h1>
           </div>
             <br>
             
             
             
            <div class="p-3 p-lg-5" id="outform">
          
 			<!--아이디-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
             	 <br><br>
              	  <label for="c_country" class="text-black">아이디</label>
             	  <input type="text" class="form-control" value="<%=dto.getUserid() %>">
          	    </div>
             </div>
            </div>            
             
             <!--이름-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">이름</label>
             	  <input type="text" class="form-control" value="<%=dto.getUsername() %>">
          	    </div>
             </div>
            </div>
             <!-- <span class="text-danger">*</span> -->

             
            <!--생년월일-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">생년월일</label>
             	  <input type="text" class="form-control" value="<%=dto.getBirth() %>" maxlength="6">
          	    </div>
             </div>
            </div>
               
              <!--휴대전호-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">휴대전화</label>
             	  <input type="text" class="form-control" value="<%=dto.getPhone() %>" maxlength="11">
          	    </div>
             </div>
            </div>
           
  			<!--이메일-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">이메일</label>
             	  <input type="text" class="form-control" value="<%=dto.getEmail() %>">
          	    </div>
             </div>
            </div> 
            
            
             <!--주소-->
              <div class="form-group row">
               <div class="col-md-4">
             	 <div class="form-group">
              	  <label for="c_country" class="text-black">주소</label>
             	  <input type="text" class="form-control" value="<%=dto.getPost() %>">
          	    </div>
             </div>
            </div>


                  
            		<div class="form-group row">
                      
                      <div class="col-md-6">
                         <button type="submit" class="btn1 btn-primary btn-lg py-3 btn-block">회원정보수정</button>
                      </div>
                      <div class="col-md-6">
                         <button type="button" class="btn2 btn-primary btn-lg py-3 btn-block">취소</button><br><br>
                      </div>
                      
                        
             
                    </div>


             
            </div>
          </div>
   
        </div>
        <!-- </form> -->
      </div>
    </div>
   </form>

</body>
</html>