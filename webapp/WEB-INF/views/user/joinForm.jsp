<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/jqueryex/jquery/jquery-1.12.4.js"></script>
<title>JBlog</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jblog.css">

</head>
<body>
	<div id="center-content">

		<!-- 메인 해더 -->
		<c:import url="/WEB-INF/views/includes/main-header.jsp"></c:import>

		<div>
			<form id="joinForm"
				action="${pageContext.request.contextPath}/user/join" method="get">
				<table>
					<colgroup>
						<col style="width: 100px;">
						<col style="width: 170px;">
						<col style="">
					</colgroup>

					<!-- 아이디 -->
					<tr>
						<td><label for="txtId">아이디</label></td>
						<td><input id="txtId" type="text" name="id" value=""
							placeholder="아이디를 입력하세요"></td>
						<td><button id="btnIdCheck" type="button">아이디체크</button></td>
					</tr>
					<tr>
						<td></td>
						<td id="tdMsg" colspan="2"></td>
					</tr>

					<!-- 비밀번호 -->
					<tr>
						<td><label for="txtPassword">패스워드</label></td>
						<td><input id="txtPassword" type="password" name="password"
							value="" placeholder="비밀번호를 입력하세요"></td>
						<td></td>
					</tr>

					<!-- 이름 -->
					<tr>
						<td><label for="txtUserName">이름</label></td>
						<td><input id="txtUserName" type="text" name="name"
							value="" placeholder="이름을 입력하세요"></td>
						<td></td>
					</tr>

					<!-- 약관동의 -->
					<tr>
						<td><span>약관동의</span></td>
						<td colspan="3"><input id="chkAgree" type="checkbox"
							name="" value=""> <label for="chkAgree">서비스
								약관에 동의합니다.</label></td>
					</tr>

				</table>

				<!-- 회원가입 -->
				<div id="btnArea">
					<button id="btnJoin" class="btn" type="submit">회원가입</button>
				</div>

			</form>
			<!-- //joinForm -->
		</div>

		<!-- 메인 푸터  자리-->
		<c:import url="/WEB-INF/views/includes/main-footer.jsp"></c:import>

	</div>
	<!-- //center-content  -->
</body>

<script type="text/javascript">
	$("#joinForm").on("submit", function() {

		var agree = $("#chkAgree").is(":checked");

		if (agree == true) {
			return true;
		} else {
			alert("약관에 동의해주세요");
			/* alert(agree) */
			return false;
		}
	});

	$("#btnIdCheck").on("click", function() {
		console.log("아이디체크 버튼클릭");
		var id = $("#txtId").val();

		console.log(id);

		var userInfo = {
			userId : id
		};

		$.ajax({

			url : "${pageContext.request.contextPath }/user/idcheck",
			type : "post", //데이터만 주고받기 때문에 post로
			//contentType : "application/json",
			data : userInfo,

			dataType : "json",
			success : function(result) {
				console.log(result);
				/*성공시 처리해야될 코드 작성*/
				if (result === false) {
					$("#tdMsg").html("이미있는 아이디입니다.");
				}else {
					$("#tdMsg").html("사용할 수 있는 아이디입니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});
	
</script>

</html>