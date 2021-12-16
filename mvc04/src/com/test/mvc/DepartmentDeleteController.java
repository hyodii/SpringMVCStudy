/*================================
	RegionDeleteController.java
	- 사용자 정의 컨트롤러
================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DepartmentDeleteController implements Controller
{
	private IDepartmentDAO dao;
	
	public void setDao(IDepartmentDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		
		ModelAndView mav = new ModelAndView();
		
		// 세션 처리과정 추가 ----------------------------------------------------------------
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
		
		// ---------------------------------------------------------------- 세션 처리과정 추가
		
		String departmentId = request.getParameter("departmentId");
		
		Department department = new Department();
		
		department = dao.searchId(departmentId);
		
		if(department.getDelCheck() > 0)
		{
			// 참조되고 있는 경우 삭제할 수 없음
			mav.setViewName("redirect:departmentlist.action");
		}
		else 
		{
			try
			{
				dao.remove(departmentId);
				
				mav.setViewName("redirect:departmentlist.action");
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
		}
		
		
		return mav;
		
	}
	
}