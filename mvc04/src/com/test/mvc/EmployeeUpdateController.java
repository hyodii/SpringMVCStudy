/*====================================================================================
	EmployeeUpdateController.java
	- 사용자 정의 컨트롤러
	- 직원 데이터 수정 액션 수행 → employeelist.action 다시 요청할 수 있도록 안내
	- DAO  객체에 대한 의존성 주입(DI)을 위한 준비
	  → 인터페이스 형태의 자료형을 속성으로 구성
	  → setter 메소드 준비
====================================================================================*/
package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class EmployeeUpdateController implements Controller
{
	private IEmployeeDAO dao;
	
	public void setDao(IEmployeeDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		// 세션 처리 과정 추가 ------------------------------------------------------------------------------
		
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
		
		// ------------------------------------------------------------------------------ 세션 처리 과정 추가 
		
		
		// 데이터 수신 → EmployeeUpdateForm.jsp(수정폼)로 부터 넘겨받은 데이터
		// EmployeeUpdateForm.jsp 에서 name으로 되어있는거 받아오는 것
		String employeeId = request.getParameter("employeeId");
		String name = request.getParameter("name");
		String ssn1 = request.getParameter("ssn1");
		String ssn2 = request.getParameter("ssn2");
		String birthday = request.getParameter("birthday");
		String lunar = request.getParameter("lunar");
		String telephone = request.getParameter("telephone");
		String regionId = request.getParameter("regionId");
		String departmentId = request.getParameter("departmentId");
		String positionId = request.getParameter("positionId");
		String basicPay = request.getParameter("basicPay");
		String extraPay = request.getParameter("extraPay");
		
		try
		{
			Employee employee = new Employee();
			
			employee.setEmployeeId(employeeId);
			employee.setName(name);
			employee.setSsn1(ssn1);
			employee.setSsn2(ssn2);
			employee.setBirthday(birthday);
			employee.setLunar(Integer.parseInt(lunar));
			employee.setTelephone(telephone);
			employee.setRegionId(regionId);
			employee.setDepartmentId(departmentId);
			employee.setPositionId(positionId);
			employee.setBasicPay(Integer.parseInt(basicPay));
			employee.setExtraPay(Integer.parseInt(extraPay));
			
			dao.modify(employee);
			
			mav.setViewName("redirect:employeelist.action");
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}



}
