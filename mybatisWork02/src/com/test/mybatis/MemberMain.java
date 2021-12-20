/*===================================
	MemberMain.java
	- 컨트롤러
=====================================*/


package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberMain
{
	// mybatis 객체 의존성 (자동) 주입~!!!
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberList(ModelMap model)
	//public String memberList(Model / ModelAndView / ModelMap model)  셋중에 어떤걸 써도 상관없음!
	{
		// MemberDAO 클래스만들지 않음 그래서 위 오토와이어 사용
		//IMemberDAO dao = (IMemberDAO)new MemberDAO();
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "WEB-INF/view/Memberlist.jsp";
		
		
	}
	
	
	
	
	
	
}
