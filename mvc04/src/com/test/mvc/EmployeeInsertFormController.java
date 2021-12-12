/*=====================================
	#21. EmployeeInsertFormController.java
	- 사용자 정의 컨트롤러
=====================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class EmployeeInsertFormController implements Controller
{
	// 인터페이스 형태의 속성 구성
	private IEmployeeDAO dao;
	
	// setter 구성
	public void setDao(IEmployeeDAO dao)
	{
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		ArrayList<Region> regionList = new ArrayList<Region>();
		ArrayList<Department> departmentList = new ArrayList<Department>();
		ArrayList<Position> positionList = new ArrayList<Position>();
		
		try
		{
			regionList = dao.regionList();
			departmentList = dao.departmentList();
			positionList = dao.positionList();
			
			mav.addObject("regionList", regionList);
			mav.addObject("departmentList", departmentList);
			mav.addObject("positionList", positionList);
			
			mav.setViewName("WEB-INF/view/EmployeeInsertForm.jsp");

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
