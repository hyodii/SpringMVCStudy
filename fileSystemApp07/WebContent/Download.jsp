<%@page import="com.test.util.FileManager"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	/* Download.jsp */
	
	// 이전 페이지 (Write_ok.jsp)로부터 데이터 수신
	String saveFileName = request.getParameter("saveFileName");
	String originalFileName = request.getParameter("originalFileName");
	
	String root = pageContext.getServletContext().getRealPath("/");
	String savePath = root + "pds" + File.separator + "saveFile";
	
	// 파일 다운로드 (하기전에 java에 FileManager class 만들고오기)
	out.clear();
	boolean flag = FileManager.doFileDownload(saveFileName, originalFileName, savePath, response);

%>
