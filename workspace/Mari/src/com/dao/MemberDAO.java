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

}
