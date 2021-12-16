/*=================================
	PositionDeleteController.java
	- 사용자 정의 컨트롤러
=================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class PositionDeleteController implements Controller
{
	private IPositionDAO dao;
	
	public void setDao(IPositionDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//-------------세션처리과정--------------------
		HttpSession session = request.getSession();
		
		if(session.getAttribute("name")==null)			 //-- 로그인이 되어있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if(session.getAttribute("admin")==null)	//-- 로그인은 되었지만 관리자가 아님. 일반 사원.
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		//---------------------------------------------
		
		//positionList.jsp 로 부터 positionId 수신
		String positionId = request.getParameter("positionId");
		
		try
		{
			dao.remove(positionId);
			mav.setViewName("redirect:positionlist.action");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
