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
<title>Memberlist.jsp</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script type="text/javascript">

	$(function()
	{
		// 삭제 버튼 클릭 이벤트 등록 및 삭제 액션 처리
		$(".btnDelete").click(function()
		{
			if (confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
			{
				$(location).attr("href", "memberdelete.action?mid=" + $(this).val());
			}
		});
		
		// 수정 버튼 클릭 이벤트 등록 및 수정 액션 처리
		$(".btnUpdate").click(function()
		{
			$("#title").html("회원 정보 수정").css(
					{
						"color" : "red",
						"font-weight" : "bold"
					});
			
			// 여기서의 this는 수정버튼  .parent 이거하는걸 트레버싱이라고함
			var mid = $(this).parents("tr").find("td:eq(0)").text();
			var name = $(this).parents("tr").find("td:eq(1)").text(); 		// 부모 tr의 1번째 td의 글자
			var telephone = $(this).parents("tr").find("td:eq(2)").text();
			
			// 위에 담은 변수를 대입
			$("#mid").val(mid);
			$("#name").val(name);
			$("#telephone").val(telephone);
			
			$("form").attr("action", "memberupdate.action"); // 지금은 action 속성이 memberinsert.action인데 이것을 바꾸겠다.
		});
		
		
		// 취소 버튼 클릭 이벤트 등록 및 취소 액션 처리
		$(".btnCancel").click(function()
		{
			$("#title").html("회원 정보 입력").css(
					{
						"color" : "black",
						"font-weight" : "normal"
					});
			$("#name").val('');			// 값 비우기
			$("#telephone").val('');
			$("form").attr("action", "memberinsert.action"); 
		});
		
		
	});
	

</script>

</head>
<body>


<div>
	<h1>회원 정보</h1>
	<hr />
</div>

<div class="container">

	<div class="panel-group">
		<div class="panel panel-default">
		
			<div class="panel-heading" id="title">
				회원 정보 입력
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
				회원 정보 출력
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
						<td>장진하</td>
						<td>010-1111-1111</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate">수정</button>
							<button type="button" class="btn btn-default btn-xs btnDelete">삭제</button>
						</td>
					</tr>
					-->
					<c:forEach var="member" items="${list }">
					<tr>
						<td>${member.mid }</td>
						<td>${member.name }</td>
						<td>${member.telephone }</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate"
							value="${member.mid }">수정</button>
							<button type="button" class="btn btn-default btn-xs btnDelete"
							value="${member.mid }">삭제</button>
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