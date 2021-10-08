package com.garo.www.matching.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.garo.www.matching.dao.MatchingDAO;
import com.garo.www.matching.vo.MatchingVO;

@Service("matchingService")
@Transactional(propagation=Propagation.REQUIRED)
public class MatchingServiceImpl implements MatchingService {
	@Autowired
	private MatchingDAO matchingDAO;
	
	@Override
	public MatchingVO login(Map loginMap) throws Exception{
		return matchingDAO.login(loginMap);
	}
	
	@Override
	public void addMatching(MatchingVO matchingVO) throws Exception{
		System.out.println("@@@serviceImpl");
		matchingDAO.insertNewMatching(matchingVO);
	}

	/*
	 * @Override public String overlapped(String id) throws Exception{ return
	 * matchingDAO.selectOverlappedID(id); }
	 */
	@Override
	public List<MatchingVO> listMatching() throws Exception{
		return matchingDAO.selectList();
		
	}
	
	
	@Override
	public void removeMatching(MatchingVO matchingVO) throws Exception{
		matchingDAO.deleteMatching(matchingVO);
	}

	@Override
	public MatchingVO viewMatching(int mch_code) throws Exception{
		return matchingDAO.viewMatching(mch_code);
	}
}
