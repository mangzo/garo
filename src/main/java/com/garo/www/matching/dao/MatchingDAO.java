package com.garo.www.matching.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.garo.www.matching.vo.MatchingVO;

public interface MatchingDAO {
	public MatchingVO login(Map loginMap) throws DataAccessException;
	public void insertNewMatching(MatchingVO matchingVO) throws DataAccessException;
	//public String selectOverlappedID(String id) throws DataAccessException;
	public List<MatchingVO> selectList() throws DataAccessException;
	//public int emailConfirm(String id) throws DataAccessException;
	//public void updateMatching(MatchingVO matchingVO) throws DataAccessException;
	public void deleteMatching(MatchingVO matchingVO) throws DataAccessException;
	public MatchingVO viewMatching(int ntc_seq) throws DataAccessException;

}
