<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="calc" class="bean.CalcBean"/>
<body>
	<%
		int num = calc.calculate(4);
		out.print("4의 세제곱 : " + num);
	%>
</body>
</html>