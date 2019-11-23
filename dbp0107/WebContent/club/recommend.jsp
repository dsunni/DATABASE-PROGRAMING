<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
	@SuppressWarnings("unchecked") 
	List<Community> commList = (List<Community>)request.getAttribute("commList");
%> --%>
<html>
<head>
<title>동아리 리스트</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/club.css' />" type="text/css">
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table style="width:100%">
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	<tr>
		<td width="20"></td>
		<td>
			<table>
				<tr>
					<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;><b> ${customerId}님을 위한 추천 동아리 리스트입니다. </b></td>
				</tr>
			</table>
			<br>
			<table style="background-color: #E5DFD2">
				<tr>
					<td width="200" align="center" bgcolor="C9BDA2">번호</td>
					<td width="200" align="center" bgcolor="C9BDA2">동아리명</td>
					<td width="200" align="center" bgcolor="C9BDA2">학과명</td>
				</tr>
				<c:forEach var="club" items="${clubList}">
					<tr>				<!-- 동아리명 클릭시 /club/detail로 넘어감 -->
	
						<td width="200" bgcolor="FFFFFF" style="padding-left: 10" height="20">
							<a href="<c:url value='/club/detail'>
						    		 <c:param name='club_no' value='${club.club_no}'/>
						 			 </c:url>"> 
				  			${club.club_name}</a>
						</td>
						<td width="20" align="center" bgcolor="FFFFFF">
							${club.title}
						</td>
					</tr>	
				</c:forEach>
			</table>
			 <br>   
			 <a href="<c:url value='' />">커뮤니티 추가</a> 
		</td>
	</tr>			
</table>
</body>
</html>