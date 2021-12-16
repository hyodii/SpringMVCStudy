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

public class DepartmentUpdateFormController implements Controller
{
	private IDepartmentDAO dao;
	
	public void setDao(IDepartmentDAO dao)
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
			String departmentId = request.getParameter("departmentId");
			
			Department department = new Department();
		
			department = dao.searchId(departmentId);
			
			mav.addObject("department", department);
			
			mav.setViewName("/WEB-INF/view/DepartmentUpdateForm.jsp");
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		return mav;
	}

}
