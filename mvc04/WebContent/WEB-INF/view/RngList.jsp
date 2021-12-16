<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   	request.setCharacterEncoding("UTF-8");
   	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RgnList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>

<!------------------------------------------------------------------
	RgnList.jsp
  - 일반 직원용 지역 리스트 출력 페이지
------------------------------------------------------------------->

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmpMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<div id="content">
		<h1>[ 지역 리스트(일반직원 전용) ]</h1>
		<hr />
		
		<!-- EMPLOYEEID NAME DEPARTMENTNAME POSITIONNAME REGIONNAME GRADE  -->
		
		<table id="regions" class="table">
			<tr>
			 	<!-- 항목 3EA -->
				<th>지역 번호</th>
				<th>지역 이름</th>
				<th>지역 인원</th>
			</tr>
			
			<c:forEach var="region" items="${regionList}">
				<tr>
					<td>${region.regionId }</td>
					<td>${region.regionName }</td>
					<td>${region.delCheck }</td>
				</tr>
			</c:forEach>
		</table>
	
	</div>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer">
	
	</div>
	
</div>


</body>
</html>