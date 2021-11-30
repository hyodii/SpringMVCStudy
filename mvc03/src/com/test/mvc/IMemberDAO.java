/*===============================
	IMemberDAO.java
	- 인터페이스
===============================*/

package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IMemberDAO
{
	// 회원 정보 추가 메소드 선언 (예외 나중에 적용 못하기 때문에 지금 구성)
	public int add(MemberDTO member) throws SQLException; 
	
	// 전체 인원 수 확인 메소드 선언
	public int count() throws SQLException; 
	
	// 회원 리스트 확인 메소드 선언 (MemberDTO들을 반환)
	public ArrayList<MemberDTO> list() throws SQLException; 
	
	
	
	/*
	// 내가 만든 인터페이스
	public void setMid(int mid);
	public int getMid();
	
	public void setName(int name);
	public String getName();
	
	public void setTelephone(int telephone);
	public int getTelephone();
	*/
}
