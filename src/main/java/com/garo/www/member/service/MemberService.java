package com.garo.www.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.garo.www.member.vo.MemberVO;

public interface MemberService {
	public void addMember(MemberVO memberVO) throws Exception;
	public String overlapped(String id) throws Exception;
	public MemberVO login(Map loginMap) throws Exception;
	public List<MemberVO> listMembers() throws Exception;
	public int emailConfirm(String id) throws Exception;
}
