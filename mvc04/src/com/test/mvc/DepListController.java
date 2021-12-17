/*===============================
	DepListController.java
=================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DepListController implements Controller
{
	// 주요 속성 구성
	// → 인터페이스 형태의 자료형을 속성으로 구성
	private IDepartmentDAO dao;

	// setter 구성
	public void setDao(IDepartmentDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();

		// 세션 처리 과정 추가 ------------------------------------------
		HttpSession session = request.getSession();

		if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		} 
		// ------------------------------------------ 세션 처리 과정 추가

		ArrayList<Department> departmentList = new ArrayList<Department>();

		try
		{
			departmentList = dao.list();

			mav.addObject("departmentList", departmentList);

			mav.setViewName("/WEB-INF/view/DepList.jsp");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}