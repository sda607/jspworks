<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");

%>
<p>이름 :  <%=name %><br>
	요청 정보 길이: <%=request.getContentLength() %>
	클라이언트 IP: <%=request.getRemoteAddr() %>
	클라이언트 전송방식 : <%=request.getMethod() %></p>