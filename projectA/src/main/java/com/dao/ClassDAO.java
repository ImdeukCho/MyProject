package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.ClassDTO;

public class ClassDAO {
	
	public List<ClassDTO> select(SqlSession session) {
		List<ClassDTO> list =  session.selectList("com.dto.selectAllMember");
		return list;
	}
	public int memberAdd(SqlSession session, ClassDTO dto) {
		return session.insert("com.dto.insertByMember", dto);
	}
	public int delete(SqlSession session, String prodId) {
		
		int n = session.delete("com.dto.deleteByMember", prodId);
		return n;
	}
    public int deleteAll(SqlSession session, List<String> list) {
		
		int n = session.delete("com.dto.deleteByAllMember", list);
		return n;
	}
	public ClassDTO login (SqlSession session, String userId) {

		ClassDTO dto = session.selectOne("com.dto.login", userId);
		return dto;
	}
}
