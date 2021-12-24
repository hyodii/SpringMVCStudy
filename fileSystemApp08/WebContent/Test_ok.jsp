<%@page import="java.util.Enumeration"%>
<%@page import="com.sun.jmx.snmp.Enumerated"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	/* Test_ok.jsp */
	
	String root = pageContext.getServletContext().getRealPath("/");
	String savePath = root + "pds" + File.separator + "saveFile";
	
	// 경로 확인
	System.out.println(savePath);
	
	File dir = new File(savePath);
	if(!dir.exists())
		dir.mkdirs();
	
	String encType = "UTF-8";
	int maxFileSize = 5*1024*1024;
	
	MultipartRequest req = null;
	
	try
	{
		req = new MultipartRequest(request, savePath, maxFileSize, encType, new DefaultFileRenamePolicy());
		
		out.println("작성자 : " + req.getParameter("userName") + "<br>");
		out.println("제목 : " + req.getParameter("subject") + "<br>");
		out.println("******************************************<br>");
		
		out.println("업로드 된 파일 <br>");
		
		// check~!!!
		// MultipartRequest 객체의 『getFileNames()』
		// → 요청으로 넘어온 파일들의 이름을 Enumeration 타입으로 반환
		Enumeration files = req.getFileNames();
		
		while (files.hasMoreElements())
		{
			String name = (String)files.nextElement();
			if(req.getFilesystemName(name) != null)
			{
				out.println("서버에 저장된 파일명 : " + req.getFilesystemName(name) + "<br>");
				out.println("업로드한 실제 파일명 : " + req.getOriginalFileName(name) + "<br>");
				out.println("파일 타입 : " + req.getContentType(name) + "<br>");
				
				File f = req.getFile(name);
				if(f != null)
				{
					out.println("파일 크기 : " + f.length() + "Bytes. <br>");
				}
			}
		}
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
%>
