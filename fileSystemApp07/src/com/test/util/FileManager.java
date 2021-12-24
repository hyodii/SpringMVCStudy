/*=======================
	FileManager.java
=======================*/

/*package com.test.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletResponse;

public class FileManager
{
	// 파일 다운로드
	// saveFileName : 서버에 저장된 파일 이름
	// originalFileName : 클라이언트가 업로드한 파일 이름
	// path : 서버에 저장된 경로
	// response : 응답 객체
	public static boolean doFileDownload(String saveFileName, String originalFileName, String savePath, HttpServletResponse response)  
	{
		// 서버에 저장되어있는 경로와 해당파일까지 나올것임
		String load_dir = savePath + File.separator + saveFileName;
		
		// 확인
		System.out.println(load_dir);
		
		try
		{
			// 서버의 파일 경로 얻어와 파일 객체 생성
			if(originalFileName == null || originalFileName.equals(""))
			{
				originalFileName = saveFileName;
			}
			
			// 시스템에서 해당 인코딩 방식이 지원하지 않는 경우
			// 『UnsupportedEncodingException』 발생
			originalFileName = new String(originalFileName.getBytes("EUC-KR"), "8859_1");
			
		} catch (UnsupportedEncodingException e)
		{
			System.out.println(e.toString());
		}
		
		//-- 여기까지 경로가 포함되어 있는 파일의 이름 구성 완료~!!!
		
		try
		{
			File file = new File(load_dir);
			
			if(file.exists())
			{
				// 바이트 배열 구성 (5MB를 한번에 다 읽어오는거보다 잘라서 구성하는게 바람직하다)
				//byte[] readByte = new byte[5242880];	// 5*1024*1024
				byte[] readByte = new byte[4096];		//4*1024
				
				// 응답 관련 컨텐트 타입 및 헤더 구성
				response.setContentType("application/octet-stream");		// 기억하기!
				response.setHeader("content-disposition", "attachment;filename=" + originalFileName);
				
				// 파일 읽어들이기(스트림 활용)
				BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
				
				// 응답을 위한 출력 스트림 구성
				OutputStream os = response.getOutputStream();
				
				int read;
				//while( (read = bis.read(readByte, 0, 5242880)) != -1)	// 정상적으로 읽어들일 수 있다면 쓰겠다!
				while( (read = bis.read(readByte, 0, 4096)) != -1)
				{
					os.write(readByte, 0, read);
				}
				
				os.flush();
				os.close();
				bis.close();
				
				return true;
			}
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return false;
		
		
		
	}
}*/





/*======================
 * FileManager.java
======================*/

package com.test.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletResponse;

public class FileManager
{
   // 파일 다운로드
   // saveFileName : 서버에 저장된 파일 이름
   // originalFileName : 클라이언트가 업로드한 파일 이름
   // path : 서버에 저장된 경로
   // response : 응답 객체
   public static boolean doFileDownload(String saveFileName, String originalFileName, String path, HttpServletResponse response)
   {
      String load_dir = path + File.separator + saveFileName;
      
      // 확인
      System.out.println(load_dir);
      
      try
      {
         if(originalFileName == null || originalFileName.equals(""))
         {
            originalFileName = saveFileName;
         }
         
         // 시스템에서 해당 인코딩 방식이 지원되지 않을 경우
         // 『UnsupportedEncodingException』 발생
         originalFileName = new String(originalFileName.getBytes("EUC-KR"), "8859_1");
      }
      catch(UnsupportedEncodingException e)
      {
         System.out.println(e.toString());
      }
      
      //-- 여기까지 수행하면 경로가 포함되어 있는 파일의 이름 구성 완료~!!!
      
      try
      {
         // 서버의 파일 경로를 얻어와 파일 객체 생성
         File file = new File(load_dir);
         
         if(file.exists())
         {
            // 바이트 배열 구성
            //byte[] readByte = new byte[5242880];   // 5*1024*1024
            byte[] readByte = new byte[4096];      // 4*1024 // 얼만큼 잘라서 읽을 건지
            
            // 응답 관련 컨텐트 타입 및 헤더 구성
            response.setContentType("application/actet-stream");
            response.setHeader("Content-disposition", "attachment;filename=" + originalFileName);
            
            // 파일 읽어들이기(스트림 활용)
            BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
            
            // 응답을 위한 출력 스트림 구성
            OutputStream os = response.getOutputStream();
            
            int read;
            //while ( (read=bis.read(readByte, 0, 5242880)) != -1 )
            while ( (read=bis.read(readByte, 0, 4096)) != -1 )   // 4바이트까지만 읽고...
            {
               os.write(readByte, 0, read);
            }
            
            // 리소스 반납
            os.flush();
            os.close();
            bis.close();
            
            return true;
         }
      }
      catch (Exception e)
      {
         System.out.println(e.toString());
      }
      
      return false;
   }
}






























