package com.member.controller;

import java.awt.Window;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ClassDAO;
import com.dto.ClassDTO;
import com.service.ClassService;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String userId = request.getParameter("userId");
		String userPasswd = request.getParameter("userPasswd");
		System.out.println("userId:"+userId+"userPasswd:"+userPasswd);
		ClassService service = new ClassService();
		ClassDTO member = service.login(userId);
		String memberId = member.getUserId();
		String memberpw = member.getUserPasswd();	
		System.out.println("memberId:"+member.getUserId());
		System.out.println("memberPw:"+member.getUserPasswd());
		
		/*
		 * if (member != null && member.getUserName() != null) {
		 * session.setAttribute("userId", member.getUserId());
		 * session.setAttribute("userPasswd", member.getUserPasswd());
		 * response.sendRedirect("MainTest.html"); } else {
		 * System.out.println("로그인 해주세요"); response.sendRedirect("login.html"); }
		 */
		
		if(userId.equals(memberId) && userPasswd.equals(memberpw)) {
			//window.close();
			//opener.location.href="MainTest.html";	
			response.sendRedirect("MainTest.html");
		} else {
			System.out.println("로그인 해주세요");
			response.sendRedirect("login.html");
		}
	}
}
