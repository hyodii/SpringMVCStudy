<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String appRoot = "/";
	appRoot = pageContext.getServletContext().getRealPath(appRoot);
	
	File newFile = new File(appRoot,"data/test.txt"); //실제 물리적 파일이 생성된게 아니라 객체가 만들어진 것.
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">
</head>
<body>

<div>
	<h1>관찰</h1>
	<hr>
</div>

<div>
	<h2>웹 어플리케이션 루트 : <%=appRoot %></h2>
	<h2> 생성할 파일의 위치 : <%=newFile %></h2>
</div>
</body>
</html>