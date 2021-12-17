/*============================================================
   PositionListController.java
   - 사용자 정의 컨트롤러 클래스
   - 직위 리스트 페이지 요청에 대한 액션 처리(관리자 전용)
   - DAO 객체에 대한 의존성 주입(DI)을 위한 준비
     → 인터페이스 형태의 자료형을 속성으로 구성
     → setter 메소드 구성
============================================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class PositionListController implements Controller
{
	private IPositionDAO dao;

	public void setDao(IPositionDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		
		ModelAndView mav = new ModelAndView();
		
		// 세션 처리 추가 ---------------------------------------------------
		HttpSession session = request.getSession();
		
		if (session.getAttribute("name")==null)
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if (session.getAttribute("admin")==null)
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		// --------------------------------------------------- 세션 처리 추가
		
		ArrayList<Position> positionList = new ArrayList<Position>();
		
		try
		{
			positionList = dao.list();
			
			mav.addObject("positionList", positionList);
			
			mav.setViewName("/WEB-INF/view/PositionList.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}	
		
		return mav;
		
	}
	
}