<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DepList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">


</head>
<body>

<!-------------------------------------------------------------------------
	DepList.jsp
  - 부서 일반 로그인용 리스트
--------------------------------------------------------------------------->

<div>

   <!-- 메뉴 영역 -->
   <div>
      <c:import url="EmpMenu.jsp"></c:import>
   </div>
   
   <!-- 콘텐츠 영역 -->
   <div id="content">
      
      <h1>[ 부서 (일반직원 전용) ]</h1>
      <hr />
      
      <!---------------------------------------- 
      EMPLOYEEID NAME SSN BIRTHDAY LUNAR LUNARNAME TELEPHONE
      DEPARTMENTID DEPARTMENTNAME POSITIONID POSITIONNAME
      REGIONID REGIONNAME BASICPAY EXTRAPAY PAY GRADE
      -------------------------------------->
      <table id="customers" class="table">
         <tr>
            <!-- 항목 15EA -->
            <th>번호</th>
            <th>이름</th>
         </tr>
         <!--          
         <tr>
            <td>1</td>
            <td>서울</td>
            <td>1</td>
            <td><button type="button" class="btn">수정</button></td>
            <td><button type="button" class="btn">삭제</button></td>
         </tr>
          -->
         <c:forEach var="department" items="${departmentList }">
         <tr>   
            <td>${department.departmentId }</td>
            <td>${department.departmentName }</td>
         </tr>
         </c:forEach>          
          
      </table>
      
   </div>
   
   <!-- 회사 소개 및 어플리케이션 소개 영역 -->
   <div id="footer">
   </div>   
   
   
</div>


</body>
</html>