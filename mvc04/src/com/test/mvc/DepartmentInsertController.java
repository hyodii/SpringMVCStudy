/*====================================
	DepartmentInsertController.java
	- 사용자 정의 컨트롤러
====================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DepartmentInsertController implements Controller
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
		
		if(session.getAttribute("name")==null)			 //-- 로그인이 되어 있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if(session.getAttribute("admin")==null)	//-- 로그인은 되었지만 관리자가 아닌 상황
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}

		// ------------------------------------------------------------------------------ 세션 처리 과정 추가 
		
		// 데이터 수신 → RegionInsert.jsp로 부터...
		String  departmentName = request.getParameter("departmentName");
		
		try
		{
			Department department = new Department();
			
			department.setDepartmentName(departmentName);
			
			dao.add(department);
			mav.setViewName("redirect:departmentlist.action");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
