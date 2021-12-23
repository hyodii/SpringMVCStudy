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
<title>Send.jsp</title>
</head>
<body>

<div>
	<h1>파일시스템 및 파일업로드</h1>
	<hr>
</div>

<div>
	<!-- <form> 엘리먼트 구성 -->
	<!-- <form> 안에 <input type="file"> 구성 -->
    <!-- 『enctype="multipart/form-data"』 : 파일을 물리적으로 서버에 업로드하기 위한 필수 속성 -->
    <!-- 『method="POST"』 : 파일을 물리적으로 서버에 업로드하기 위한 요청 방식 -->
	<form action="Receive.jsp" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="name"><br>
		
		<!-- 파일 업로드 대화창 구성 -->
		<!-- 『input type="file"』 -->
		파일 : <input type="file" name="upload"><br>
		<button type="submit">전송</button>
	</form>
</div>

</body>
</html>