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
	// 원래는 커넥션 구성.. 원래는 sqlSession을 넣으려면 ... 얘를 setter 구성해서
	// sql 세션을 주입해야함.
	// 그런데 별도로 주입해달라고 하지 않아도. 컨테이너가 운용할 수 있는 리소스 중에 sqlSession 타입이 하나 있으면,
	// 자동으로 연결되어 주입됨(@Autowired)
	// sqlSession이 필요하게 됐을 때.. simpleDataSourse 만들어서 생명 유지 시키고.. sqlSession 만들어서
	// 생명 유지 시키고.. (디스패처 서블릿 참고)
	// sqlSession을 @AutoWired 하면.. 알아서 찾고 조립하는 걸 스프링컨테이너가 다 함
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberList(ModelMap model)
	//public String memberList(Model / ModelAndView / ModelMap model)  셋중에 어떤걸 써도 상관없음!
	{
		// MemberDAO 클래스만들지 않음 그래서 위 오토와이어 사용
		//IMemberDAO dao = (IMemberDAO)new MemberDAO();
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		// Ajax 할 때 Ajax 객체가 Ajax이름의 객체가 아니었음(HttpRequest...
		// 마찬가지로 mybatis 객체는 sqlsession 이름으로 되어있다고.. 일단 그렇게 생각하자..
		// 사실은 sqlsession이 mybatis를 생성함..
		// IMemberDAO dao = sqlSession.getMapper(); 이러면 오브젝트
		// IMemberDAO dao = (IMemberDAO)sqlSession.getMapper; 이러면 캐스팅한 것
		// 이걸 더 안정적으로 만들기 위해
		// IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class); 이 타입으로 만들어서 가져오는 것
		
		model.addAttribute("count", dao.count());
		model.addAttribute("list", dao.list());
		
		return "WEB-INF/view/Memberlist.jsp";
		
		
	}
	
	@RequestMapping(value = "/memberinsert.action", method = RequestMethod.POST) 		// 폼으로 넘기는건 전부 POST 방식!
	public String memberInsert(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.add(m);
		
		return "redirect:memberlist.action";
	}
	
	@RequestMapping(value = "/memberdelete.action", method = RequestMethod.GET)		// 얘는 POST하면 안됨! GET방식으로 mid=3이렇게 넘기기로함!
	public String memberDelete(MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.remove(m);
		
		return "redirect:memberlist.action";
	}
	
	
	@RequestMapping(value = "/memberupdate.action", method = RequestMethod.POST)
	public String modify(MemberDTO m)		// 메소드 이름은 상관없고! MemberDTO 로 넘기는게 중요!
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.modify(m);
		
		return "redirect:memberlist.action";
		//return "redirect : memberlist.action";   : 여기 앞뒤로 띄우는거 아니다!!
	}
	
	
	
	
}
