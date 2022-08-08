<%@page import="com.repository.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="memberDAO" class="com.repository.MemberDAO" scope="application" />
<%

	//힌글 인코딩
	request.setCharacterEncoding("utf-8");

	//가입 폼 입력값은 넘겨 받음
	String memberid = request.getParameter("memberId");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	//member객체생성
	Member member = new Member();
	member.setMemberID(memberid);
	member.setPasswd(passwd);
	member.setName(name);
	member.setGender(gender);
	
	//db 저장
	memberDAO.addMember(member);
	
	//화면 이동
	response.sendRedirect("./memberList.jsp");
	
%>