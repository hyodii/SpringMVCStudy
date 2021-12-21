/*==================================
	StudentDTO.java
	- 데이터 저장 및 전송 전용 객체.
====================================*/

package com.test.mybatis;

public class StudentDTO
{
	// 주요 속성 구성
	private String sid, name, tel;

	// getter / setter 구성
	public String getSid()
	{
		return sid;
	}

	public void setSid(String sid)
	{
		this.sid = sid;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getTel()
	{
		return tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}
	
	
}
