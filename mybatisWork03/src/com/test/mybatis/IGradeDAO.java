/*==================================
	IGradeDAO.java
	- 인터페이스
====================================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IGradeDAO
{
	// 성적 데이터 인원 수 확인
	public int count();
	
	// 성적 데이터 리스트(목록) 확인
	public ArrayList<GradeDTO> list();
	
	// 성적 데이터 입력(추가)
	public int add(GradeDTO f);
}
