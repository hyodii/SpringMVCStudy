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
<title>Receive.jsp</title>
</head>
<body>

<div>
	<h1>Spring MVC 데이터 송수신 실습</h1>
	<hr />
</div>

<div>
	<h2>안녕하세요, ${userName }님 반갑습니다.</h2>
</div>

</body>
</html>