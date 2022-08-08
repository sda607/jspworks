package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.repository.Member;
import com.repository.MemberDAO;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 2L;

	MemberDAO memberDAO;
	
	public void init(ServletConfig config) throws ServletException {
		memberDAO = new MemberDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String uri = request.getRequestURI();
		System.out.println(uri);	//http://localhost:8080/memberForm.do
		
		String command = uri.substring(uri.lastIndexOf("/"));//주소
		System.out.println(command);
		
		String nextPage = null; //jsp페이지
		HttpSession session = request.getSession();//세션 객체 생성
		PrintWriter out = response.getWriter();	// 쓰기 객체 생성
		
		if(command.equals("/memberForm.do")) {
			//회원가입 페이지 요청
			//페이지 이동
		 nextPage =	"/memberForm.jsp";
		}else if(command.equals("/addMember.do")) {
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
			request.setAttribute("msg", "register");
			
			//화면 이동
			nextPage = "./main.jsp";
			
		}else if(command.equals("/memberList.do")) {
			//dao 목록요청
			ArrayList<Member> memberList = memberDAO.getListAll();
			
			//model - 반환자료
			request.setAttribute("memberList", memberList);
			//view
			nextPage = "/memberList.jsp";
		}else if(command.equals("/loginMember.do")) { 			//로그인 화면 요청
			nextPage = "/loginMember.jsp";
		}else if(command.equals("/loginProcess.do")) {			//로그인 인증 처리
			//로그인 처리 요청
			String memberId = request.getParameter("memberId");
			String passwd = request.getParameter("passwd");

			boolean loginResult = memberDAO.checkLogin(memberId, passwd);	//세션 발급
			String name = memberDAO.getNameByLogin(memberId);
			
			if(loginResult){
				session.setAttribute("sessionId", memberId);			//id세션 발급
				session.setAttribute("name", name);						//이름 세션 발급
				request.setAttribute("msg", "login");					//model - msg를 보냄
				nextPage = "/memberResult.jsp";
			}else{
				out.println("<script>");
				out.println("alert('아이디와 비빌먼호를 확인해주세요')");
				out.println("history.go(-1)");
				out.println("</script>");
			}
		}else if(command.equals("/logout.do")) {
			//로그 아웃 처리 요청
			session.invalidate();
			nextPage = "./main.jsp";
		} else if(command.equals("./memberView.do")) {
			//나의 정보를 클릭하면 상세 보기
			//세션 권한이 있는 memberId
			String memberId = (String)session.getAttribute("sessionId");
			
			Member member = memberDAO.getMember(memberId);
			
			//model and view
			request.setAttribute("member", member); //모델 = member
			nextPage = "/memberView.jsp";			//큐 = memberView.jsp
		}else if(command.equals("/deleteMember.do")) {
			//회원 삭제 처리
			String memberId = request.getParameter("memberId");
			
			memberDAO.deleteMember(memberId);
			
			nextPage= "./memberList.do";
			
			
		} else if(command.equals("/updateMember.do")) {

			String memberID = request.getParameter("memberID");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");

			Member member = new Member();
			member.setMemberID(memberID);
			member.setPasswd(passwd);
			member.setName(name);
			member.setGender(gender);
			
			//수정 처리=dao 및 페이지 이동
			memberDAO.updateMember(member);
			request.setAttribute("msg", "update");
			nextPage= "/memberResult.jsp";
		}
		
		
		
		/*
			 * else if(command.equals("./main.do")) { 
			 * //로그 아웃 처리 요청 
			 * session.invalidate();
			 * nextPage="./main.jsp"; }else if(command.equals("./deleteProcess.do")) { 
			 * //회원삭제 요청 
			 * String memberId = request.getParameter("memberId"); //아이디 받기
			 * 
			 * memberDAO.deleteMember(memberId); //회원삭제
			 * 
			 * nextPage = "./memberList.do"; }else if(command.equals("./memberView.do")) {
			 * //회원 상세보기 session = request.getSession(); String sessionId =
			 * (String)session.getAttribute("sessionId"); Member member =
			 * memberDAO.getMember(sessionId);
			 * 
			 * //model and view request.setAttribute("member", member); nextPage =
			 * "./memberView.jsp"; }else if(command.equals("/updateProcess.do")) { //회원수정
			 * String memberId = request.getParameter("memberId"); String passwd =
			 * request.getParameter("passwd"); String name = request.getParameter("name");
			 * String gender = request.getParameter("gender");
			 * 
			 * //member객체생성 Member member = new Member(); member.setMemberID(memberId);
			 * member.setPasswd(passwd); member.setName(name); member.setGender(gender);
			 * 
			 * //db 저장 memberDAO.updateMember(member);
			 * 
			 * //model and view request.setAttribute("member", member); nextPage =
			 * "/memberView.do"; }
			 */
		
		
		//포워딩 - 페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

}