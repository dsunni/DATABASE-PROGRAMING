<%@page contentType="text/html; charset=utf-8" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@include file = "/main_banner.jsp"%>  --%>
<html>
<head>
<title>동아리 세부정보</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel=stylesheet href="<c:url value='/css/customer.css' />" type="text/css">
</head>


<header class="masthead">
  <div class="container h-50">
    <div class="row h-100 align-items-center">
      <div class="col-12 text-center">
        <h1 class="font-weight-light">동아리 관련 정보입니다.</h1>
      </div>
    </div>
  </div>
</header>




<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
  <br>
  
  <dl class="row" style="margin-left:10%">
	  <dt class="col-sm-3">동아리명</dt>
	  <dd class="col-sm-9">${club.club_name}</dd>
	
	  <dt class="col-sm-3">학과명</dt>
	  <dd class="col-sm-9">${club.dept_name}</dd>
	  	
	  <dt class="col-sm-3">제목</dt>
	  <dd class="col-sm-9">${club.title}</dd>
	  	
	  <dt class="col-sm-3">내용</dt>
	  <dd class="col-sm-9">${club.contents}</dd>
	  	  	
	  <dt class="col-sm-3">개설일자</dt>
	  <dd class="col-sm-9">${club.createtime} </dd>
  </dl>
  
  
  
  <%-- <table class="table table-bordered" style="margin-left:10%; width:85%">
    <tr>
	  <td width="20"></td>
	  <td> 
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
 	    

	  </td>
	</tr>
  </table>  --%> 
</body>
</html>