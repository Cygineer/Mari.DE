package com.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.MemberService;

/**
 * Servlet implementation class MemberIdCheckServlet
 */
@WebServlet("/IdCheckServlet")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userid = request.getParameter("userid");
		System.out.println("userid:    "+userid);
		
		MemberService service = new MemberService();
		int count = service.memberidCheck(userid);
		System.out.println("IdCheckServlet count: "+ count);		
		String mesg = "";
		if(count==1) {
		  mesg = "아이디 중복";	
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//html 설정없이 mesg값만 out
		out.print(mesg);   //sucess 콘솔에 mesg을 출력 
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
