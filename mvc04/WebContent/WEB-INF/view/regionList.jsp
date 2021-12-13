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
<title>regionList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		// 수정 버튼 클릭
		$(".updateBtn").click(function()
		{
			alert("수정 버튼 클릭 테스트")
		});
		
		// 삭제 버튼 클릭
		$(".deleteBtn").click(function()
		{
			alert("수정 버튼 클릭 테스트")
		});
	});

</script>

</head>
<body>

<div>
	<!-- 메뉴 영역  -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역  -->
	<div id="content">
		<h1>[ 지역 관리 ]</h1>
		<hr />
		
		<div>
			<form action="">
				<input type="button" value="직원 추가" class="btn"
				onclick="location.href='regioninsertform.action'"/>
			</form>
		</div>
	</div>
	<br><br>
	
	<table id="" class="table">
		<tr>
			<!-- 항목 15EA -->
			<th>지역번호</th>
			<th>지역이름</th>
			<th>삭제여부</th>
		</tr>
		
		<c:forEach var="region" items="${regionList }">
			<tr>
				<td>${region.regionId }</td>
				<td>${region.regionName }</td>
				<td>${region.delCheck }</td>
				<td><button type="button" class="btn updateBtn">수정</button></td>
				<td><button type="button" class="btn deleteBtn">삭제</button></td>
			</tr>
		</c:forEach>
	</table>
	
</div>

</body>
</html>