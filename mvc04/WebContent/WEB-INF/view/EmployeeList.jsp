<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmployeeList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
<<<<<<< HEAD
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	
	$(function()
	{
		// 수정 버튼 클릭
		$(".updateBtn").click(function()
		{
			// 테스트
			//alert("수정 버튼 클릭 테스트");
			
			$(location).attr("href", "employeeupdateform.action?employeeId=" + $(this).val())
			
		});
		
		// 삭제 버튼 클릭
		$(".deleteBtn").click(function()
		{
			// 테스트
			//alert("삭제 버튼 클릭 테스트");
		});
		
	});
	
	
</script>

=======
>>>>>>> 045305b891cbfea6776b066c72c16aa7b5904816
</head>
<body>

<!-- ---------------------------------------------------------------------------
	#15. EmployeeList.jsp
	- 직원 리스트 출력 페이지
	- 관리자가 접근하는 직원 데이터 출력 페이지
	  (일반 직원이 접근하는 직원 데ㅣ터 출력 페이지는 EmpList.jsp로 구성)
-------------------------------------------------------------------------------- -->

<div>
	<!-- 메뉴 영역  -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역  -->
	<div id="content">
		<h1>[ 직원 관리 ]</h1>
		<hr />
		
		<div>
			<form action="">
				<input type="button" value="직원 추가" class="btn"
				onclick="location.href='employeeinsertform.action'"/>
				<!-- onclick="location.href='employeeinsertform.jsp'"/> .jsp 는 view 보여주겠다는거 논노노 -->
			</form>
		</div>
	</div>
	<br><br>
	
	<!-- -----------------------------------------
	EMPLOYEEID   NOT NULL NUMBER       
	NAME                  VARCHAR2(30) 
	BIRTHDAY              DATE         
	LUNAR                 NUMBER(1)    
	TELEPHONE             VARCHAR2(40) 
	DEPARTMENTID          NUMBER       
	POSITIONID            NUMBER       
	REGIONID              NUMBER       
	BASICPAY              NUMBER       
	EXTRAPAY              NUMBER       
	SSN1                  CHAR(6)      
	SSN2                  VARCHAR2(50) 
	GRADE                 NUMBER(1)    
	------------------------------------------ -->
	<table id="customers" class="table">
		<tr>
			<!-- 항목 15EA -->
			<th>번호</th>
			<th>이름</th>
			<th>주민번호</th>
			<th>생년월일</th>
			<th>양/음력</th>
			<th>전화번호</th>
			<th>지역</th>
			<th>부서</th>
			<th>직위</th>
			<th>기본급</th>
			<th>수당</th>
			<th>급여</th>
			<th>등급</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<!-- 
		<tr>
			<td>1</td>
			<td>손범석</td>
			<td>621212</td>
			<td>1962-12-12</td>
			<td>양력</td>
			<td>010-6543-3210</td>
			<td>서울</td>
			<td>개발부</td>
			<td>사원</td>
			<td>1,500,000</td>
			<td>1,500,000</td>
			<td>3,000,000</td>
			<td>관리자</td>
			<td><button type="button" class="btn">수정</button></td>
			<td><button type="button" class="btn">삭제</button></td>
		</tr>
		-->
		<c:forEach var="employee" items="${employeeList }">
			<tr>
				<td>${employee.employeeId }</td>
				<td>${employee.name }</td>
				<td>${employee.ssn }-*******</td>
				<td>${employee.birthday}</td>
				<td>${employee.lunarName }</td>
				<td>${employee.telephone }</td>
				<td>${employee.regionName }</td>
				<td>${employee.departmentName }</td>
				<td>${employee.positionName }</td>
				
				<!-- 구두점(,) 찍는 법 -->
				<%-- <td>${employee.basicPay }</td> --%>
				<td><fmt:formatNumber value="${employee.basicPay }" 
				groupingUsed="true"></fmt:formatNumber></td>
				
				<%-- <td>${employee.extraPay }</td> --%>
				<td><fmt:formatNumber value="${employee.extraPay }" 
				groupingUsed="true"></fmt:formatNumber></td>
				
				<%-- <td>${employee.pay }</td> --%>
				<td><fmt:formatNumber value="${employee.pay }" 
				groupingUsed="true"></fmt:formatNumber></td>
				
				<td>${employee.grade==0 ? "관리자" : "일반사원" }</td>
<<<<<<< HEAD
				<td><button type="button" class="btn updateBtn"
				value="${employee.employeeId }">수정</button></td>
				<td><button type="button" class="btn deleteBtn"
				value="${employee.employeeId }">삭제</button></td>
=======
				<td><button type="button" class="btn updateBtn">수정</button></td>
				<td><button type="button" class="btn deleteBtn">삭제</button></td>
>>>>>>> 045305b891cbfea6776b066c72c16aa7b5904816
				<td></td>
				
			</tr>
		</c:forEach>
		
	</table>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer">
	</div>
	
	
</div>

</body>
</html>










