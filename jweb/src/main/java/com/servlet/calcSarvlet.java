package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/calc")
public class calcSarvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//폼 데이터 넘겨 받기
		int n1 = Integer.parseInt(request.getParameter("num1"));	//첫번째 수
		int n2 = Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("op");
		int result = 0; //결과 값
		
//		System.out.println(n1);
//		System.out.println(n2);
//		System.out.println(op);
		
		switch(op){
			case "+":
				result = n1 + n2; break;
			case "-":
				result = n1 - n2; break;
			case "*":
				result = n1 * n2; break;
			case "/":
				result = n1 / n2; break;
		}
		
		//html 형식으로 응답 처리
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter(); //출력(쓰기)
		
		out.append("<html><body>")
			.append("<h2>계산기 서블릿</h2><hr>")
			.append("계산 결과: " + result)
			.append("</body></html>");
	}

}
