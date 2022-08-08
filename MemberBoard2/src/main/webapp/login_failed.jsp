<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link rel="stylesheet" href="./resources/css/common.css">
</head>
<jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<body>
	<jsp:include page="./menu.jsp"/>
	<div id="container">
		<div class="title">
			<h3>인증에 실패했습니다.</h3>
		</div>
	</div>
	<jsp:include page="./footer.jsp"/>
</body>
</html>