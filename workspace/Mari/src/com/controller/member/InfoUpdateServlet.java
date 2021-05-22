package com.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class InfoUpdateServlet
 */
@WebServlet("/InfoUpdateServlet")
public class InfoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String nextPage=null;
		if(dto!=null) {//로그인 된 경우 
			request.setCharacterEncoding("utf-8");//한글처리 
			String userid = request.getParameter("userid");
			String passwd =(String) session.getAttribute("passwd");
			String username = request.getParameter("username");
			String post = request.getParameter("post");
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String birth = request.getParameter("birth");
			MemberDTO dto2 =
					new MemberDTO(userid,passwd,username,post,addr1, addr2, phone, email,birth);			
			MemberService service = new MemberService();
			int num = service.infoUpdate(dto2);
			System.out.println(num);
			//세션에 mesg로 '회원정보가 수정되었습니다.'  저장 
			session.setAttribute("login", dto2);
			nextPage = "MyPageServlet";  
		}else {
			nextPage = "LoginUIServlet";
		}
		
		
	
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
