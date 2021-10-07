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
	
	@Override
	public String overlapped(String id) throws Exception{
		return matchingDAO.selectOverlappedID(id);
	}
	@Override
	public List<MatchingVO> listMatching() throws Exception{
		return matchingDAO.selectList();
		
	}
	public int emailConfirm(String id) throws Exception{
		return matchingDAO.emailConfirm(id);
	}
	/*
	 * //단일 이미지 보이기
	 * 
	 * @Override public int addNewMatching(Map matchingMap) throws Exception{ return
	 * matchingDAO.insertNewMatching(matchingMap); } //단일 파일 보이기 (이미지랑 무슨 차인지 모르겠음)
	 * 
	 * @Override public matchingVO viewMatching(int ntc_seq) throws Exception{ MatchingVO
	 * matchingVO = matchingDAO.selectMatching(ntc_seq); return matchingVO; }
	 */
	
	//수정
	@Override
	public void modMatching(MatchingVO matchingVO) throws Exception{
		matchingDAO.updateMatching(matchingVO);
	}
	
	@Override
	public void removeMatching(MatchingVO matchingVO) throws Exception{
		matchingDAO.deleteMatching(matchingVO);
	}

	@Override
	public MatchingVO viewMatching(int ntc_seq) throws Exception{
		return matchingDAO.viewMatching(ntc_seq);
	}
}
