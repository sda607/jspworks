<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bean.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Memberbean 사용</title>
</head>
<body>
	<%
		MemberBean member =  new MemberBean();
	
	%>
	<p>아이디 : <%=member.getId() %></p>
	<p>이름 : <%=member.getName() %></p>
</body>
</html>