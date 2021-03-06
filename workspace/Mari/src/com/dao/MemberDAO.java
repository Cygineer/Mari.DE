package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public int memberAdd(SqlSession session, MemberDTO dto) {
		int num = session.insert("MemberMapper.memberAdd", dto);
		return num;
	}

	public MemberDTO memberLogin(SqlSession session, HashMap<String, String> map) {
		MemberDTO dto = session.selectOne("MemberMapper.memberLogin", map);
		return dto;
	}

	public int memberidCheck(SqlSession session, String userid) {
		int count = session.selectOne("MemberMapper.memberidCheck", userid);
		return count;
	}

	public MemberDTO loginCheck(SqlSession session, String userid) {
		MemberDTO dto = session.selectOne("MemberMapper.loginCheck", userid);
		return dto;
	}

	public int infoUpdate(SqlSession session, MemberDTO dto2) {
		 int n = session.update("MemberMapper.infoUpdate", dto2);
		   return n;
	}

}
