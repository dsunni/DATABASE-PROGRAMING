<%@page contentType="text/html; charset=utf-8" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>동아리 세부정보</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="<c:url value='/css/club.css' />" type="text/css">
<style>
.commTable {
  color: blue;
  background: YellowGreen;
}
.commHead {
  width: 120px;
  height: 22px;
  text-align: center;
  background: "E6ECDE";  
}
.commCell {
  width: 470px;
  text-align: left;
  padding-left: 10px;
  background: "FFFFFF";  
}
</style>
<script>
function clubRemove() {
	return confirm("정말 삭제하시겠습니까?");		
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
  <br>
  <table style="width:100%">
    <tr>
	  <td width="20"></td>
	  <td>
	    <table>
		  <tr>	<!-- String club_name, String dept_name, String title, String contents, Date createtime  -->
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>동아리 상세 정보</b>&nbsp;&nbsp;</td>
		  </tr>
	    </table>  
	    <br>	  	    
	  	<table class="clubTable">
	  	  <tr>
			<td class="clubHead">동아리명</td>
			<td class="clubCell">
				${club.club_name}
			</td>
		  </tr>
		  <tr>
			<td class="clubHead">학과명</td>
			<td class="clubCell">
				${club.dept_name}
			</td>
		  </tr>
		  <tr>
			<td class="clubHead">제목</td>
			<td class="clubCell">
				${club.title}
			</td>
		  </tr>	
		  <tr>
			<td class="clubHead">내용</td>
			<td class="clubCell">
				${club.contents}
			</td>
		  </tr>		  	  
		  <tr>
			<td class="clubHead">개설일자</td>
			<td width="470" bgcolor="ffffff" style="padding-left: 10">
				${club.createtime} 
			</td>
	 	</table>
	    <br>
 	    <a href="<c:url value='/club/list' />">동아리 목록</a>
 	    <br>	   
 	    
 	    <!-- 수정이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        <c:if test="${updateFailed}">
	      <font color="red"><c:out value="${exception.getMessage()}" /></font>
	    </c:if>    
	  </td>
	</tr>
  </table>  
</body>
</html>