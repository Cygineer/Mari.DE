<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/WEB-INF/common/header/header.jsp" flush="true"></jsp:include>
<div style="margin:40px 220px;">
</div>
<jsp:include page="/WEB-INF/common/nav/nav.jsp" flush="true"></jsp:include>
<div style="margin:40px 220px;">
<jsp:include page="/WEB-INF/bbs/bbs.jsp" flush="true"></jsp:include><br>
<jsp:include page="/WEB-INF/common/footer/footer.jsp"></jsp:include>

</body>
</html>