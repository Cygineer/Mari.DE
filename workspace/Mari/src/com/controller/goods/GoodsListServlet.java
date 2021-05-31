package com.controller.goods;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.GoodsDTO;
import com.google.gson.Gson;
import com.service.GoodsService;

/**
 * Servlet implementation class GoodsListServlet
 */
@WebServlet("/GoodsListServlet")
public class GoodsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String gcategory = request.getParameter("gcategory");
		System.out.println("GoddsListServlet===="+gcategory);
		if(gcategory==null) {
			gcategory = "ring";
		}
		//String name = "items";
		GoodsService service = new GoodsService();
		List<GoodsDTO> list = service.goodsList(gcategory);
		
		request.setAttribute("goodsList", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
		dis.forward(request, response);
		
		/*
		HashMap<String, List<GoodsDTO>> data = new HashMap<String, List<GoodsDTO>>();
		data.put(name, list);
		Gson gson = new Gson();

	    String json = gson.toJson(data);

	    response.setCharacterEncoding("UTF-8");
	    PrintWriter out = response.getWriter();
	     out.println(json);
		*/
		
		
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
