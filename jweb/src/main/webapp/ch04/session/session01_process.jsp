<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 발급 = 로그인, 회원가입
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if(userid.equals("corona") && passwd.equals("2019")){
		session.setAttribute("userID", userid); //usrID - 세션 이름
		session.setAttribute("passwd", passwd); 
		out.println("세션 설정이 성공했습니다.");
	}else{
		out.println("<script>");
		out.println("alert('아이디나 비밀번호가 일치하지 않스빈다.')");
		out.println("history.go(-1)");
		out.println("</script>");
	}
%>