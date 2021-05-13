package com.controller.member;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String post = request.getParameter("post");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		MemberService service = new MemberService();
		MemberDTO dto = new MemberDTO(userid, passwd, username, post, addr1, addr2, phone, email,birth);
		//System.out.println(userid+"\t"+passwd+"\t"+username+"\t"+post+"\t"+addr1+"\t"+addr2+"\t"+phone+"\t"+email);
		
		
		 int num = service.memberAdd(dto);
		 //System.out.println("실행된 레코드 갯수 :"+num); 
		 if(num != 0) {
			 	session.setAttribute("join", dto);
				response.sendRedirect("JoinSuccess");
		 }
		 
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
