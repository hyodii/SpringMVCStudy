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
<title>EmpMenu.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/menuStyle.css">
</head>
<body>

<!----------------------------
  EmpMenu.jsp
  - 일반회원 메인 메뉴 페이지 구성
----------------------------->

<div id="menu">
	<ul>
		<li>
			<a href="emplist.action" class="menu">직원 관리</a>
		</li>
		<li>
			<a href="rgnlist.action" class="menu">지역 관리</a>
		</li>
		<li>
			<a href="deptlist.action" class="menu">부서 관리</a>
		</li>
		<li>
			<a href="pstlist.action" class="menu">직위 관리</a>
		</li>
		<li>
			<a href="logout.action" class="menu">로그아웃</a>
		</li>
	</ul>
</div>

</body>
</html>