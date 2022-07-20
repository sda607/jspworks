<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h3>세션 유효 시간 변경 전(30분)</h3>
<%
	int time = session.getMaxInactiveInterval() / 60;

	out.print("<p>" + session.getMaxInactiveInterval() + "초");
	out.print("<p>" + time + "분");
	
	
%>
<h3>세션 유효 시간 변경 전(3분)</h3>
<%
	session.setMaxInactiveInterval(3 * 60); //3분

	time = session.getMaxInactiveInterval() / 60;	
	
	out.print("<p>" + session.getMaxInactiveInterval() + "초");
	out.print("<p>" + time + "분");
	
	
%>