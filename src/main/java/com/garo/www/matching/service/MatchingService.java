package com.garo.www.matching.service;

import java.util.List;
import java.util.Map;

import com.garo.www.matching.vo.MatchingVO;

public interface MatchingService {
	public void addMatching(MatchingVO matchingVO) throws Exception;
	//public String overlapped(String id) throws Exception;
	public MatchingVO login(Map loginMap) throws Exception;
	public List<MatchingVO> listMatching() throws Exception;
//	public int emailConfirm(String id) throws Exception;
	public MatchingVO viewMatching(int mch_code) throws Exception;
	
	
	//public Map viewMatching(int matchingMap) throws Exception;
	//public void modMatching(MatchingVO matchingVO) throws Exception;
	public void removeMatching(MatchingVO matchingVO) throws Exception;
	public void refuseMatching(MatchingVO matchingVO) throws Exception;
	public void acceptMatching(MatchingVO matchingVO) throws Exception;
	public void matchingRequest(MatchingVO matchingVO) throws Exception;
}
