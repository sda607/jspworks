<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현문 태그</title>
</head>
<%!
	//전역 변수
	int count = 0;
%>

<body>
	<h3>Page Count is <%= ++count %></h3>
	
	<p>Today's date: <%= new java.util.Date().toLocaleString() %>
	<p>웹</p>
</body>
</html>