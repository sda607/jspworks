<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보</title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO"  scope="application" />
<body>
	<jsp:include page="./menu.jsp" />
	<div id="container">
		<div class="title">
			<h1>나의 정보</h1>
		</div>
		<div>
			<form action="./updateMember.do" method="post">
			<table class="tbl">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memberId" value='<c:out vlaue="${member.memberId}" />'></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="passwd" value='<c:out vlaue="${member.passwd}" />'></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="passwd_confirm" value='<c:out vlaue="${member.passwd}" />'></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value=""></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<c:if test="${member.gender eq '남 '}">
							<input type="radio" name="gender" value="남" checked>남
							<input type="radio" name="gender" value="여">여
						</c:if>
						<c:if test="${member.gender eq '여 '}">
						<input type="radio" name="gender" value="남">남
						<input type="radio" name="gender" value="여" checked>여
						</c:if>
					</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td><input type="text" name="joinDate" value="${member.joinDate}"
					           readonly="readonly"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="수정" onclick="checkView()">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
	<jsp:include page="./footer.jsp" />
</body>
</html>