<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	out.print("현재 설정된 쿠키의 개수" + cookies.length + "<br>");
	/* for(int i=0; i<cookies.length; i++){
		out.print("설저된 쿠키의 속성 이름[" + i + "]): " + cookies[i].getName();
			
	} */
%>

