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

		<div id="loginForm">
			<form id="loginFormTag" method="get"
				action="${pageContext.request.contextPath}/user/login">
				<table>
					<colgroup>
						<col style="width: 100px;">
						<col style="">
					</colgroup>
					<tr>
						<td><label for="textId">아이디</label></td>
						<td><input id="textId" type="text" name="id" value=""
							placeholder="아이디를 입력하세요"></td>
					</tr>
					<tr>
						<td><label for="textPassword">패스워드</label></td>
						<td><input id="textPassword" type="password" name="password"
							value="" placeholder="패스워드를 입력하세요"></td>

					</tr>
					<tr>
						<td colspan="2" id="tdMsg" colspan="2"><span></span></td>
					</tr>
				</table>

				<c:if test="${param.result eq 'fail'}">
					<p>아이디 또는 비번을 확인해 주세요.</p>
				</c:if>
				
				<div id="btnArea">
					<button class="btn" type="submit">로그인</button>
				</div>

			</form>

		</div>

		<!-- 메인 푸터  자리-->
		<c:import url="/WEB-INF/views/includes/main-footer.jsp"></c:import>


	</div>

</body>

<script type="text/javascript">
	
</script>


</html>