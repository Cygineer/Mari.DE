package com.controller.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.google.gson.Gson;
import com.service.MemberService;

/**
 * Servlet implementation class LoginCheckServlet
 */
@WebServlet("/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("userid", userid);
		
		MemberService service = new MemberService();
		MemberDTO dto = service.loginCheck(userid);
		
		HashMap<String,MemberDTO> data= new HashMap<>();
		Gson gson = new Gson();
		
		String nextPage = "";
		
		if (dto.getUserid().equals(userid) && dto.getPasswd().equals(passwd)) {//아이디와 패스워드가 일치하는경우
			data.put("login",dto);
	        String json = gson.toJson(data);
	        nextPage = "MainServlet";
		}
		String json = gson.toJson(data);
		response.sendRedirect(nextPage);

		response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println(json);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
