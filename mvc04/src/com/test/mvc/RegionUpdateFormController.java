/*===========================
	RegionUpdateFormController.java
	- 사용자 정의 컨트롤러
===========================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class RegionUpdateFormController implements Controller
{
	private IRegionDAO dao;
	
	public void setDao(IRegionDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		// 세션 처리 과정 추가 ------------------------------------------------------------------------------

		HttpSession session = request.getSession();
		
		if(session.getAttribute("name")== null)		//-- 로그인이 되어있지 않으면
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if (session.getAttribute("admin")==null)		//-- 로그인이 되었지만 관리자가 아닌상황
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		
		// ------------------------------------------------------------------------------ 세션 처리 과정 추가 
		
		try
		{
			String regionId = request.getParameter("regionId");
			
			Region region = new Region();
		
			region = dao.searchId(regionId);
			
			mav.addObject("region", region);
			
			mav.setViewName("/WEB-INF/view/RegionUpdateForm.jsp");
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		return mav;
	}

}
