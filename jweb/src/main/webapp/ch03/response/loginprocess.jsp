<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("userid"); //userid 받기
	String pwd = request.getParameter("passwd");
	
	if(id.equals("adamin") && pwd.equals("1234")){
		// out.println("로그인에 성공했습니다.");
		response.sendRedirect("loginSuccess.jsp");
	}else{
		//out.println("로그인에 실패했습니다.");
		response.sendRedirect("loginFaill.jsp");
		
	}
%>