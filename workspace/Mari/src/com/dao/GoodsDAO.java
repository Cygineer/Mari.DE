package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.GoodsDTO;

public class GoodsDAO {

	public List<GoodsDTO> goodsList(SqlSession session, String gcategory) {
		System.out.println("dao===="+gcategory);
		   List<GoodsDTO> list = 
				   session.selectList("GoodsMapper.goodsList", gcategory);
		   return list;
	   }

	public GoodsDTO goodsRetrieve(SqlSession session, String gcode) {
		GoodsDTO list = 
				   session.selectOne("GoodsMapper.goodsRetrieve", gcode);
		   return list;
	   }
	
	
}
