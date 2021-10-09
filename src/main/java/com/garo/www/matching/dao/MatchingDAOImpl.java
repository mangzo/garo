package com.garo.www.matching.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.garo.www.matching.vo.MatchingVO;

@Repository("matchingDAO")
public class MatchingDAOImpl  implements MatchingDAO{
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public MatchingVO login(Map loginMap) throws DataAccessException{
		MatchingVO matching=(MatchingVO)sqlSession.selectOne("matching.login",loginMap);
	   return matching;
	}
	

	@Override
	public void insertNewMatching(MatchingVO vo) throws DataAccessException{
		sqlSession.insert("matching.insertNewMatching",vo);
	}
	 
	@Override
	public List<MatchingVO> selectList() throws DataAccessException {
		return sqlSession.selectList("matching.selectMatchingList");
		
	}
	public int emailConfirm(String mem_id) throws DataAccessException {
		return sqlSession.selectOne("matching.emailConfirm", mem_id);
	}
	
	public void refuseMatching(MatchingVO vo) throws DataAccessException{
		sqlSession.update("matching.refuseMatching",vo);
	}
	public void acceptMatching(MatchingVO vo) throws DataAccessException{
		sqlSession.update("matching.acceptMatching",vo);
	}
	/*
	 * @Override public String selectOverlappedID(String mem_id) throws
	 * DataAccessException { return
	 * sqlSession.selectOne("matching.selectOverlappedID",mem_id); }
	 */
	
	/*
	 * private int selectNewntc_seq() throws DataAccessException { return
	 * sqlSession.selectOne("matching.insertNewntc_seq"); }
	 */
	
	/*
	 * @Override public void updateMatching(MatchingVO matchingVO) throws
	 * DataAccessException { sqlSession.update("matching.updateMatching",
	 * matchingVO);
	 * 
	 * }
	 */
	
	@Override
	public void deleteMatching(MatchingVO matchingVO) throws DataAccessException {
		sqlSession.delete("matching.deleteMatching", matchingVO);
	}
	
	@Override
	public MatchingVO viewMatching(int mch_code) throws DataAccessException {
		return sqlSession.selectOne("matching.viewMatching", mch_code);
	}
}

