/*===================
	IMemberDAO.java
	- 인터페이스
=====================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IMemberDAO
{
	// 여기서는 throws 안함!(SQL문 따로 뺄꺼니까!)
	public int add(MemberDTO m);
	public int count();
	public ArrayList<MemberDTO> list();
	//public int remove(String mid); 이거든 밑에꺼든 둘다 가능!
	public int remove(MemberDTO m);
	public int modify(MemberDTO m);
}
