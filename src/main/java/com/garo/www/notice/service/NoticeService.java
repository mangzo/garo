package com.garo.www.notice.service;

import java.util.List;
import java.util.Map;

import com.garo.www.notice.vo.NoticeVO;

public interface NoticeService {
	public void addNotice(NoticeVO noticeVO) throws Exception;
	public String overlapped(String id) throws Exception;
	public NoticeVO login(Map loginMap) throws Exception;
	public List<NoticeVO> listNotices() throws Exception;
	public int emailConfirm(String id) throws Exception;
	public NoticeVO viewNotice(int ntc_seq) throws Exception;
	
	
	//public Map viewNotice(int noticeMap) throws Exception;
	public void modNotice(NoticeVO noticeVO) throws Exception;
	public void removeNotice(NoticeVO noticeVO) throws Exception;
}
