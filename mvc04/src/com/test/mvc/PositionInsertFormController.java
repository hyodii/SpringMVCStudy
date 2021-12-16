/*==========================================
	PositionInsertFormController.java
===========================================*/


package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


public class PositionInsertFormController implements Controller
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

	   	//----------------------------------------------------------------
		HttpSession session = request.getSession();
		
		if(session.getAttribute("name")==null) //-- 로그인x
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if(session.getAttribute("admin")==null)	 //-- 일반 사원.
		{
			mav.setViewName("redirect:logout.action");	// 기존의 로그인을 풀어주는 것
			return mav;
		}
		
		// ------------------------------------------------------------------------- 세션 처리과정 추가
		// 관리자로 로그인 된 상황
			
	      ArrayList<Position> positionList = new ArrayList<Position>();
	      
	      try
	      {
	    	  positionList = dao.list();
	
	         mav.addObject("positionList", positionList);
	
	         
	         mav.setViewName("WEB-INF/view/PositionInsertForm.jsp");
	
	         
	      } 
	      catch (Exception e)
	      {
	         System.out.println(e.toString());
	      }
	
	      
	      return mav;
	      
	   }
   
}