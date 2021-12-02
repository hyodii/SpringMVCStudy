/* ==================================================
	#9. EmployeeDAO.java
	- 데이터베이스 액션 처리 클래스
	- 직원 정보 입력 / 출력 / 수정 / 삭제 액션
	- Connection 객체에 대한 의존성 주입을 위한 준비
	  → 인터페이스 형태의 속성 구성(DataSource)
	  → setter 메소드 정의
====================================================*/

package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class EmployeeDAO implements IEmployeeDAO
{
	// 주요 속성 구성 → 인터페이스 형태
	private DataSource dataSource;
	
	// setter 구성
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	
	@Override
	public ArrayList<Employee> list() throws SQLException
	{
		ArrayList<Employee> result = new ArrayList<Employee>();
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT EMPLOYEEID, NAME, SSN, BIRTHDAY"
				+ ", LUNAR, LUNARNAME, TELEPHONE"
				+ ", DEPARTMENTID, DEPARTMENTNAME"
				+ ", POSITIONID, POSITIONNAME"
				+ ", REGIONID, REGIONNAME"
				+ ", BASICPAY, EXTRAPAY, PAY, GRADE "
				+ "FROM EMPLOYEEVIEW "
				+ "ORDER BY EMPLOYEEID";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next())
		{
			Employee employee = new Employee();
			
			employee.setEmployeeId(rs.getString("EMPLOYEEID"));
			employee.setName(rs.getString("NAME"));
			employee.setSsn(rs.getString("SSN"));
			employee.setBirthday(rs.getString("BIRTHDAY"));
			employee.setLunar(rs.getInt("LUNAR"));
			employee.setLunarName(rs.getString("LUNARNAME"));
			employee.setTelephone(rs.getString("TELEPHONE"));
			employee.setDepartmentId(rs.getString("DEPARTMENTID"));
			employee.setDepartmentName(rs.getString("DEPARTMENTNAME"));
			employee.setPositionId(rs.getString("POSITIONID"));
			employee.setPositionName(rs.getString("POSITIONNAME"));
			employee.setRegionId(rs.getString("REGIONID"));
			employee.setRegionName(rs.getString("REGIONNAME"));
			employee.setBasicPay(rs.getInt("BASICPAY"));
			employee.setExtraPay(rs.getInt("EXTRAPAY"));
			employee.setPay(rs.getInt("PAY"));
			employee.setGrade(rs.getInt("GRADE"));
			
			result.add(employee);
			
		}
		rs.close();
		pstmt.close();
		
		return result;
	}

	@Override
	public ArrayList<Region> regionList() throws SQLException
	{
		ArrayList<Region> result = new ArrayList<Region>();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT REGIONID, REGIONNAME, DELCHECK"
				+ " FROM REGIONVIEW"
				+ " ORDER BY REGIONID";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next())
		{
			Region region = new Region();
			region.setRegionId(rs.getString("REGIONID"));
			region.setRegionName(rs.getString("REGIONNAME"));
			region.setDelCheck(rs.getInt("DELCHECK"));
			
			result.add(region);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
		
	}

	@Override
	public ArrayList<Department> departmentList() throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Position> positionList() throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getMinBasicPay(String positionId) throws SQLException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int employeeAdd(Employee employee) throws SQLException
	{
		int result = 0;
		
		// check~!! conn 연결하는 법~!!!
		Connection conn = dataSource.getConnection();
		
		
		String sql = "INSERT INTO EMPLOYEE( EMPLOYEEID, NAME, SSN1, SSN2, BIRTHDAY, LUNAR"
				+" , TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID"
				+" , BASICPAY, EXTRAPAY)"
				+"VALUES( EMPLOYEESEQ.NEXTVAL, ?, ?, CRYPTPACK.ENCRYPT(?,?)" 
				+" , TO_DATE(?, 'YYYY-MM-DD'), ?, ?, ?, ?, ?"
				+" , ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, employee.getEmployeeId());
		pstmt.setString(2, employee.getName());
		pstmt.setString(3, employee.getSsn1());
		pstmt.setString(4, employee.getSsn2());
		pstmt.setString(5, employee.getBirthday());
		pstmt.setInt(6, employee.getLunar());
		pstmt.setString(7, employee.getTelephone());
		pstmt.setString(8, employee.getDepartmentId());
		pstmt.setString(9, employee.getPositionId());
		pstmt.setString(10, employee.getRegionId());
		pstmt.setInt(11, employee.getBasicPay());
		pstmt.setInt(12, employee.getExtraPay());
		
		
		result = pstmt.executeUpdate();
		pstmt.close();
		
		return result;
	}

	@Override
	public int remove(String employeeId) throws SQLException
	{
		int result = 0;
		Connection conn = dataSource.getConnection();
		String sql = "DELETE FROM EMPLOYEE WHERE EMPLOYEEID=2";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, employeeId);
		
		result = pstmt.executeUpdate();
		
		return result;
	}

	@Override
	public int modify(Employee employee) throws SQLException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Employee searchId(String employeeId) throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String login(String id, String pw) throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String logAdmin(String id, String pw) throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
