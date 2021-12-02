/* ===============================
	#5. IEmployeeDAO.java
	- 인터페이스
=================================*/

package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IEmployeeDAO
{
	public ArrayList<Employee> list() throws SQLException;
	
	public ArrayList<Region> regionList() throws SQLException;
	public ArrayList<Department> departmentList() throws SQLException;
	public ArrayList<Position> positionList() throws SQLException;
	
	public int getMinBasicPay(String positionId) throws SQLException;
	public int employeeAdd(Employee employee) throws SQLException;
	public int remove(String employeeId) throws SQLException;
	public int modify(Employee employee) throws SQLException;		// 찾는걸 찾아서 다 수정하니까!!! Employee employee
	public Employee searchId(String employeeId) throws SQLException;	// 아이디를 가지고있는 모든 정보를 찾아야하기 때문에 Employee
	
	public String login(String id, String pw) throws SQLException;
	public String logAdmin(String id, String pw) throws SQLException;
	
}
