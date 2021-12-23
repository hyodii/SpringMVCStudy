<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	/* ObjectWrite.jsp */
	
	String appRoot = "/";
	appRoot = pageContext.getServletContext().getRealPath(appRoot);
	
	//테스트
	System.out.println(appRoot);
	
	File newFile = new File(appRoot, "objdata/data.ser");
	
	//파일이 존재할 디렉토리가 존재하지 않는 경우
	//파일이 위치할 경로까지의 디렉터리를 생성해준다.
	if(!newFile.getParentFile().exists())
	{
		newFile.getParentFile().mkdirs();
	}
	
	//파일에 삽입하기 위한 객체(Hashtable) 를 만들어 데이터를 넣는다.
	Hashtable<String, String> h = new Hashtable<String, String> ();
	
	h.put("key1", "데이터1");
	h.put("key2", "데이터2");
	
	//파일을 내보내기 위한 스트림 구성
	FileOutputStream fos = new FileOutputStream(newFile);
	
	//Object 를 파일에 쓰기위해... ObjectOutputStream 객체 생성
	ObjectOutputStream oos = new ObjectOutputStream(fos);
	
	//ObjectOutputStream을 이용하여 파일에 Object를 기록한다.(써 놓는다.)
	oos.writeObject(h);
	
	//리소스 반납
	oos.close();
	fos.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>