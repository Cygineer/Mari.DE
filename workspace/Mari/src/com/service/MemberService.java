package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {

	MemberDAO dao = new MemberDAO();
	
	public int memberAdd(MemberDTO dto) {
		SqlSession session = MySqlSessionFactory.getSession();
		int num = 0;
        try{
        	num =dao.memberAdd(session,dto);
        	session.commit();
        }finally {
        	session.close();
        }
		return num;
	}

	public MemberDTO memberLogin(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
        try{
        	dto =dao.memberLogin(session,map);
        }finally {
        	session.close();
        }
		return dto;
	}

	public int memberidCheck(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		int count = 0;
		try {
			 MemberDAO dao = new MemberDAO();
			count = dao.memberidCheck(session, userid);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return count;
	}

	public MemberDTO loginCheck(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try{
        	dto =dao.loginCheck(session,userid);
        }finally {
        	session.close();
        }
		return dto;
	}

	public int infoUpdate(MemberDTO dto2) {
		SqlSession session = MySqlSessionFactory.getSession();
		  int n = 0;
		  try {
			  MemberDAO dao = new MemberDAO();
			  n = dao.infoUpdate(session, dto2);
			  session.commit();
		  }finally {
			session.close();
		}
		  return n;
	   }//end memberUpdate

}
