package com.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/cookie")
public class cookieservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		Date date = new Date();
		//쿠키객체 생성 - 쿠키값(한글로 설정)
		Cookie cookie = new Cookie("cookieTest", URLEncoder.encode("JSP프로그래밍", "utf-8"));
		
		//쿠키 유효시간 설정
		cookie.setMaxAge(24*60*60);
		
		//서버에서 클라이언트 컴에게 발행(전송)
		response.addCookie(cookie);

		PrintWriter out = response.getWriter();
		
		out.print("쿠키가 생성되었습니다.");
		out.print(date);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}