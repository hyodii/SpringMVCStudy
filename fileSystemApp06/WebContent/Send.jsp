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
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h1>파일시스템 및 파일업로드2</h1>
	<hr>
</div>

<div>
	<!-- form -->
	<!-- method="post" -->
	<!-- enctype="multipart/form-data" -->
	<form action="Receive.jsp" method="post" enctype="multipart/form-data">
		작성자 : <input type="text" name="userName"><br><br>
		제목 : <input type="text" name="subject"><br><br>
		파일 <input type="file" name="uploadFile" ><br><br>
		<input type="submit" value="파일 올리기"> <br><br>
	</form>
</div>

</body>
</html>