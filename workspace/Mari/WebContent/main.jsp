<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡ MariN.De ♡</title>
</head>
<body>
<%
	String mesg = (String)session.getAttribute("memberAdd");
	if(mesg != null){
%>
<script type="text/javascript">
	alert("<%=mesg%>");
</script>

<%
	session.removeAttribute("memberAdd");
}
%>


<jsp:include page="/WEB-INF/common/header/header.jsp"></jsp:include><br><br>
<jsp:include page="/WEB-INF/common/nav/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/common/slide/slide.jsp"></jsp:include><br>
<jsp:include page="/WEB-INF/goods/goodsList.jsp"></jsp:include>
<jsp:include page="/WEB-INF/common/footer/footer.jsp"></jsp:include>
</body>
</html>