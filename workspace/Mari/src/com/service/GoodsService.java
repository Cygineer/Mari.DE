package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.GoodsDAO;
import com.dto.GoodsDTO;

public class GoodsService {

	 public List<GoodsDTO> goodsList(String gcategory) {
			SqlSession session = MySqlSessionFactory.getSession();
			System.out.println("service===="+gcategory);
			List<GoodsDTO> list = null;
			try {
				 GoodsDAO dao = new GoodsDAO();
				 list = dao.goodsList(session, gcategory);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return list;
		}//end idCheck

	public GoodsDTO goodsRetrieve(String gcode) {
			SqlSession session = MySqlSessionFactory.getSession();
			GoodsDTO list = null;
			try {
				 GoodsDAO dao = new GoodsDAO();
				 list = dao.goodsRetrieve(session, gcode);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return list;
		}//end idCheck

}
