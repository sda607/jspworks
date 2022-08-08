<%@page import="com.repository.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="com.repository.BoardDAO" scope="application" />
<%
	request.setCharacterEncoding("utf-8");

	//name 속성의 데이터 값 받기
	String bnum =request.getParameter("bnum");
	String title =request.getParameter("title");
	String content =request.getParameter("content");
	
	//객체 자료 넣기(set)
	Board board = new Board();
	board.setBnum(Integer.parseInt(bnum));
	board.setTitle(title);
	board.setContent(content);
	
	//수정처리 - db작업
	// BoardDAO boardDAO = new boardDAO(); 
	boardDAO.updateBoard(board); 				

	//페이지 이동
	if(session.getAttribute("sessionId") != null){
		boardDAO.updateBoard(board);
		out.println("<script>");
		out.println("alert('정보를 수정했습니다.')");
		out.println("location.href='./boardList.jsp'");
		out.println("</script>");
	}else{
		response.sendRedirect("./boardList.jsp");
	}

	
	
	
	
	
	
%>