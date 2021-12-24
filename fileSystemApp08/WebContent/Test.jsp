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
<title>Test.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>css/main.css">
</head>
<body>

<div>
	<h1>파일 업로드 <small>두 개의 파일 업로드</small></h1>
	<hr />
</div>

<div>
	<form action="Test_ok.jsp" method="post" enctype="multipart/form-data">
		작성자 : <input type="text" name="userName"/><br><br>
		제목 : <input type="text"  name="subject"/><br><br>
		파일명 : <input type="file"  name="uploadFile1"/><br><br>
		파일명 : <input type="file"  name="uploadFile2"/><br><br>
		
		<input type="submit" value="파일 올리기"/>
	</form>
</div>

</body>
</html>