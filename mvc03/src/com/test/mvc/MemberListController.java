/*=========================================
	MemberListController.java
	- 사용자 정의 컨트롤러
	- 리스트 출력 액션
	- DAO 객체에 대한 의존성 주입
	  → setter 메소드 추가
	  
컨트롤러가 뷰페이지에 setter한 내용을 뿌려준다 이렇게 이해
=========================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberListController implements Controller
{
	
	// 인터페이스 자료형을 취하는 속성 구성
	private IMemberDAO dao;
	
	// setter 메소드 구성
	public void setDao(IMemberDAO dao)
	{
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		int count = 0;
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		try
		{
			count = dao.count();
			memberList = dao.list();
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		mav.addObject("count", count);
		mav.addObject("memberList", memberList);
		mav.setViewName("/WEB-INF/view/MemberList.jsp");
		
		return mav;
	}

}
