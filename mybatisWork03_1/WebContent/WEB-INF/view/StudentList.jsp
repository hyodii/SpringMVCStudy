<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scal=1">
<title>StudentList.jsp</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

</head>
<body>



<div>
	<h1>학생 정보</h1>
	<hr />
</div>

<div class="container">

	<div class="panel-group">
		<div class="panel panel-default">
		
			<div class="panel-heading" id="title">
				학생 정보 입력
			</div>
			
			<div class="panel-body">
				<form role="form" action="memberinsert.action" method="post">
				<!-- role : 어떤 역할을 수행한다~ -->
					<input type="hidden" id="mid" name="mid">	<!-- update를 위해 mid를 히든으로 숨겨놓는다! -->
					<div class="form-group">
						<label for="name">
							NAME : 
						</label>
						<input type="text" class="form-control" id="name" name="name" />
					</div>
					<div class="form-group">
						<label for="telephone">
							TELEPHONE : 
						</label>
						<input type="tel" class="form-control" id="telephone" name="telephone" />
					</div>
					
					<button type="submit" class="btn btn-default btn-sm">SUBMIT</button>
					<button type="button" class="btn btn-default btn-sm btnCancel">CANCEL</button>
				</form>
			</div>
			
		</div><!-- close .panel .panel-default -->
		
		<div class="panel panel-default">
			<div class="panel-heading">
				학생 정보 출력
			</div>
		</div>
		
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>MID</th>
						<th>NAME</th>
						<th>TELEPHONE</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
				    <!-- 
					<tr>
						<td>1</td>
						<td>정효진</td>
						<td>010-1111-1111</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate">수정</button>
							<button type="button" class="btn btn-default btn-xs btnDelete">삭제</button>
						</td>
					</tr>
					-->
					<c:forEach var="student" items="${list }">
					<tr>
						<td>${student.mid }</td>
						<td>${student.name }</td>
						<td>${student.telephone }</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate"
							value="${student.mid }">수정</button>
							<button type="button" class="btn btn-default btn-xs btnDelete"
							value="${student.mid }">삭제</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<button type="button" class="btn btn-default btn-sm">
				<!-- Count <span class="badge" role="badge">1</span> -->
				Count <span class="badge" role="badge">${count }</span>
			</button>
			
		</div>
		
		
	</div>
	
</div>










</body>
</html>