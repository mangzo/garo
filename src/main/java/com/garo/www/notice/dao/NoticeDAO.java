package com.garo.www.notice.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.garo.www.notice.vo.NoticeVO;

public interface NoticeDAO {
	public NoticeVO login(Map loginMap) throws DataAccessException;
	public void insertNewNotice(NoticeVO noticeVO) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
	public List<NoticeVO> selectList() throws DataAccessException;
	public int emailConfirm(String id) throws DataAccessException;
	public void updateNotice(NoticeVO noticeVO) throws DataAccessException;
	public void deleteNotice(NoticeVO noticeVO) throws DataAccessException;
	public NoticeVO viewNotice(int ntc_seq) throws DataAccessException;

}
