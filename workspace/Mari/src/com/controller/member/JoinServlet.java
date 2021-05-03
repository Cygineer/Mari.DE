package com.controller.member;

import java.awt.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		MemberService service = new MemberService();
		MemberDTO dto = new MemberDTO(userid, passwd, username, null, null, null, phone, email);
		int num = service.memberAdd(dto);
		System.out.println("실행된 레코드 갯수 :"+num);
		/*
		 * if (num != 0) {
		 * 
		 * }
		 */
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
