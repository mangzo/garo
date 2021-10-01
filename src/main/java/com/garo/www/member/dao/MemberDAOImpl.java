package com.garo.www.member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.garo.www.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl  implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public MemberVO login(Map loginMap) throws DataAccessException{
		MemberVO member=(MemberVO)sqlSession.selectOne("sql.login",loginMap);
	   return member;
	}
	
	@Override
	public void insertNewMember(MemberVO vo) throws DataAccessException{
		sqlSession.insert("sql.insertNewMember",vo);
	}
	
	@Override
	public List<MemberVO> selectList() throws DataAccessException {
		return sqlSession.selectList("sql.selectList");
	}
	public int emailConfirm(String mem_id) throws DataAccessException {
		return sqlSession.selectOne("sql.emailConfirm", mem_id);
	}
	@Override
	public String selectOverlappedID(String mem_id) throws DataAccessException {
		return sqlSession.selectOne("sql.selectOverlappedID",mem_id);
	}
}
