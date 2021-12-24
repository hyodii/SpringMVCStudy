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
   /* Write_ok.jsp */
   
   String root = pageContext.getServletContext().getRealPath("/");
   //String savePath = root + "/" + "pds" + "/" + "saveFile"; // root에 이미 "/"들어 있어서 이렇게 하면 X
   //String savePath = root + "pds" + "/" + "saveFile";
   String savePath = root + "pds" + File.separator + "saveFile";
   
   //경로 확인
   System.out.println(savePath);
   
   //경로 상 디렉터리가 존재하지 않으면 생성한다.
   File dir = new File(savePath);
   if(!dir.exists())
      dir.mkdirs();
   
   String encType = "UTF-8";
   int maxFileSize = 5 * 1024 * 1024; //5MB
   
   MultipartRequest req = null;
   String urlFile = "";
   
   try
   {
      // request, 파일저장경로, 최대크기, 인코딩방식, 중복파일명처리정책
      req = new MultipartRequest(request, savePath, maxFileSize
            ,encType, new DefaultFileRenamePolicy());
      
      out.println("작성자 : " + req.getParameter("uesrName") + "<br>");
      out.println("제목 : " + req.getParameter("subject") + "<br>");
      out.println("서버에 저장된 파일명 : " + req.getFilesystemName("uploadFile") + "<br>");
      out.println("업로드한 실제 파일명 : " + req.getOriginalFileName("uploadFile") + "<br>");
      out.println("파일 타입 : " + req.getContentType("uploadFile") + "<br>");
      
      File f = req.getFile("uploadFile");
      if(f!=null)
      {
         out.println("파일 크기 : " + f.length() + "Bytes. <br>");
      }
      
      urlFile = "Download.jsp?saveFileName=" + req.getFilesystemName("uploadFile");
      urlFile += "&originFileName=" + req.getOriginalFileName("uploadFile");
   }
   catch(Exception e)
   {
      System.out.println(e.toString());
   }
   
%>

<br><br><a href="<%=urlFile%>">파일 다운로드</a>

