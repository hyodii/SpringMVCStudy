/*===============================
	EmployeeMenuController.java
=================================*/
package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class EmployeeMenuController implements Controller
{
	// 주요 속성 구성
	// → 인터페이스 형태의 자료형을 속성으로 구성
	

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();


		// 로그인 여부만 확인 → 관리자인지 확인할 필요 없음.

		
		// 세션 처리 과정 추가 ------------------------------------------------------------------------------
		
		/*
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)			//-- 로그인이 되어 있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if (session.getAttribute("admin")==null)	//-- 로그인은 되었지만 관리자가 아닌 상황
		{
			mav.setViewName("redirect:logout.action");
			return mav;
			//-- 로그인은 되어 있지만 이 때 클라이언트는
			//   일반 직원으로 로그인 되어 있는 상황이므로
			//   로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리
		}
		*/
		
		// ------------------------------------------------------------------------------ 세션 처리 과정 추가 
		
		

		mav.setViewName("/WEB-INF/view/EmployeeMenu.jsp");

		return mav;
	}

}
