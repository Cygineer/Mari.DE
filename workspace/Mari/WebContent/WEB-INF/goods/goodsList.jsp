<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.GoodsDTO"%>
<%@page import="java.util.List"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.in_table{
	margin-right: 25px;
	margin-bottom: 60px;
}


</style>
</head>
<body>

<table width="100%" cellspacing="0" cellpadding="0">

	<tr>
		<td>
			<table align="center" width="1200" cellspacing="0" cellpadding="0" border="0">
				
				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td height="1" colspan="8" bgcolor="CECECE"></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
				
				<%
				 List<GoodsDTO> list = (List<GoodsDTO>)request.getAttribute("goodsList");
			    for(int i=1;i<=list.size();i++){
			    	GoodsDTO dto = list.get(i-1);
			    	String gcode = dto.getGcode();
			    	String gcategory = dto.getGcategory();
			    	String gname = dto.getGname();
			    	String gprice = dto.getGprice();
			    	String gimage = dto.getGimage();
			    	System.out.println(gcode+gcategory+gname+gprice+gimage);
				%>
				
					<td>
							<table class="in_table">
								<tr>
									<td>
										<a href=""><!-- 이미지링크 --> 
											<img src="image/goods/<%=gimage %>.PNG" border="0" align="center" width="300">
										</a>
									</td>
								</tr>
								<tr>
								
									<td height="10">
								</tr>
								<tr>
									<td class= "td_default" align ="center">
										<a class= "a_black" href=""><%=gname %><br></a>
									</td>
								</tr>
								<tr>
									<td height="10">
								</tr>
								<tr>
									<td class="td_red" align ="center">
										<font color="red"><strong><%=gprice %></strong></font>
									</td>
								</tr>
							</table>
					</td>
					<%
				      if(i%4==0){
				   %>
				       <tr>
				        <td height="10">
				       </tr>
				   <%
				      }//end if
				   %>		
						
<%
    }//end for
%>
				</tr>
			</table>
		</td>
	</tr>












</body>
</html>