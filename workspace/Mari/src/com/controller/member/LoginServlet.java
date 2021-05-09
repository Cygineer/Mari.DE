package com.controller.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	//System.out.println(userid+passwd);
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("userid", userid);
	map.put("passwd", passwd);
	
	MemberService service = new MemberService();
	MemberDTO dto = new MemberDTO();
	dto = service.memberLogin(map);//login 인증
	//System.out.println(dto);
			
	HttpSession session = request.getSession();
	String nextPage = ""; //이동페이지저장
	String mesg ="";
	if (dto != null) {//회원일경우
		nextPage = "MainServlet";
		session.setAttribute("login", dto);//로그인정보저장
	}else {//dto == null 회원이아닌경우
		nextPage = "LoginUIServlet";
		session.setAttribute("mesg", mesg);
	}
	response.sendRedirect(nextPage);//페이지 두개 중 하나로 이동
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
