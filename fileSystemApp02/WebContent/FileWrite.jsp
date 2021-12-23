<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/*문자 셋*/
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	/* FileWrite.jsp */
	
	String appRoot = "/";
	appRoot = pageContext.getServletContext().getRealPath(appRoot);
	
	// 1. 파일을 쓰기 위해 File 객체를 생성
	File newFile = new File(appRoot, "data/test.txt");
	
	// 2. 파일이 존재할 디렉터리가 없는 경우는 파일이 위치할 곳까지의 디렉터리를 만들어준다.
	if( !newFile.getParentFile().exists()) //-- 존재하지 않는다면...
	{
		newFile.getParentFile().mkdirs();
	}
	
	//3-1.파일을 쓰기 위한 FileWriter 를 생성 
	FileWriter fw = new FileWriter(newFile);
	
	//3-2. FileWriter 를 조금 더 편하게 사용하기 위해 PrintWriter 로 감싸줌
	PrintWriter pw = new PrintWriter(fw);
	
	//4. 실질적으로 파일에 내용을 씀(기록)
	pw.println("테스트이다....");
	pw.println("확인해보자....");
	
	//5-1.PrintWriter 리소스 반납(닫아줌)
	pw.close();
	
	//5-1.FileWriter 리소스 반납(닫아줌)
	fw.close();
	
	
%>
