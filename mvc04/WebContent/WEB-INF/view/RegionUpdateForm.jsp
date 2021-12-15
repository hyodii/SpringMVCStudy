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
<title>RegionUpdateForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/jquery-ui.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

<script type="text/javascript">

	$(function()
	{
		$("#submitBtn").click(function()
		{
			if($("#regionId").val()=="" || $("#regionName").val()=="")
			{
				$("#err").html("필수 입력 항목이 누락되었습니다.");
				$("#err").css("display","inline");
				return	//-- submit 액션 처리 중단
			}
			
			// 폼 submit 액션 처리 수행
			$("#regionForm").submit();
		});
	});
	
</script>
</head>
<body>

<!--  
	RegionUpdateForm.jsp
	- 지역 데이터 수정 페이지
-->

<div>

	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<div id="content">
		<h1> [ 직원 변경 ]</h1>
		<hr />
	</div>
	
	<form action="regionupdate.action" method="post" id="regionForm">
		<table>
			<tr>
				<th>지역 번호</th>
				<td>
					<input type="text"  id="regionId" name="regionId" readonly="readonly"
					value="${region.regionId }"/>
				</td>
			</tr>
			<tr>
				<th>지역 이름</th>
				<td>
					<input type="text" id="regionName" name="regionName"
					value="${region.regionName }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<br><br>
					<button type="button" class="btn" id="submitBtn"
					style="width: 40%">지역 변경</button>
					<button type="button" class="btn" id="listBtn"
					style="width: 40%"
					onclick="location.href='regionlist.action'">지역 리스트</button>
					<br><br>
					<span id="err" style="color: red;font-weight: normal;display: none;"></span>
				</td>
			</tr>
		</table>
	</form>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer"></div>
	
</div>

</body>
</html>