/*==================================
	IStudentDAO.java
	- 인터페이스
====================================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IStudentDAO
{
	// 인원 수 확인
	public int count();
	
	// 학생 리스트(목록) 확인
	public ArrayList<StudentDTO> list();
	
	// 학생 데이터 추가
	public int add(StudentDTO s);
	
	// 학생 데이터 확인
	// (sid 를 확용하여 학생 데이터 검색)
	public StudentDTO search(String sid);
	
}
