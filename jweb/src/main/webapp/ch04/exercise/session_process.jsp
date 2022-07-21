<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");

	if(id.equals("admin") && pw.equals("1234")){
		session.setAttribute("userID", id); //세션 발급
		response.sendRedirect("welcome.jsp");
	}else{
		out.print("아이디와 비빌먼호가 일치하지 않쓰빈다.");
	}

%>