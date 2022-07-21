<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Cookie[] cookies = request.getCookies();
	//쿠키삭제
	for(int i=0; i<cookies.length; i++){
		cookies[i].setMaxAge(0);
		
		response.addCookie(cookies[i]);
	}
		//페이지 강제 이동
		response.sendRedirect("cookie02.jsp");
%>