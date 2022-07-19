<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		/* out.print("아이디: " + id);
		out.print("패스워드: " + pwd); */
		
	%>
	
		<p>아이디 : <%=id %>
		<p>비밀번호 : <%=pwd %>
</body>
</html>