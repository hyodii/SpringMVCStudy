/*===========================
	SendController.java
	- 사용자 정의 컨트롤러
===========================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// ※ Spring 의 『Controller』 인터페이스를 구현하는 방법을 통해
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class SendController implements Controller
{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//mav.addObject(attributeValue)  → 들고갈게 잇다면 이거 사용
		mav.setViewName("/WEB-INF/view/Send.jsp");
		
		
		return mav;
	}

}
