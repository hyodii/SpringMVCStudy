/* ===============================
	PositionUpdateController.java
	- 인터페이스
=================================*/


package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class PositionUpdateController implements Controller
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
			
			// 세션 처리과정 추가 (로그인해서 name이나 admin이 없다면 이 페이지 이용 못해야 함)-------------
			
			HttpSession session = request.getSession();
			
			if(session.getAttribute("name")==null) //-- 로그인이 되어있지 않은 상황
			{
				mav.setViewName("redirect:loginform.action");
				return mav;
			}
			else if(session.getAttribute("admin")==null)	 //-- 로그인은 되었지만 관리자가 아님. 일반 사원.
			{
				mav.setViewName("redirect:logout.action");	// 기존의 로그인을 풀어주는 것
				return mav;
			}
			
			// ------------------------------------------------------------------------- 세션 처리과정 추가

			// 데이터 수신 → positionUpdateForm.jsp(수정폼) 로 부터...
			String positionId = request.getParameter("positionId");
			String positionName = request.getParameter("positionName");
			int minBasicPay = Integer.parseInt(request.getParameter("minBasicPay"));
			
			
			try
			{
				Position position = new Position();
				
				position.setPositionId(positionId);
				position.setPositionName(positionName);
				position.setMinBasicPay(minBasicPay);
	
				dao.modify(position);
				
				mav.setViewName("redirect:positionlist.action");
				
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return mav;

	}

}
