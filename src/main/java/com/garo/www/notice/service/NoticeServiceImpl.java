package com.garo.www.notice.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.garo.www.notice.dao.NoticeDAO;
import com.garo.www.notice.vo.NoticeVO;

@Service("noticeService")
@Transactional(propagation=Propagation.REQUIRED)
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public NoticeVO login(Map loginMap) throws Exception{
		return noticeDAO.login(loginMap);
	}
	
	@Override
	public void addNotice(NoticeVO noticeVO) throws Exception{
		System.out.println("@@@serviceImpl");
		noticeDAO.insertNewNotice(noticeVO);
	}
	
	@Override
	public String overlapped(String id) throws Exception{
		return noticeDAO.selectOverlappedID(id);
	}
	@Override
	public List<NoticeVO> listNotices() throws Exception{
		return noticeDAO.selectList();
		
	}
	public int emailConfirm(String id) throws Exception{
		return noticeDAO.emailConfirm(id);
	}
	/*
	 * //���� �̹��� ���̱�
	 * 
	 * @Override public int addNewNotice(Map noticeMap) throws Exception{ return
	 * noticeDAO.insertNewNotice(noticeMap); } //���� ���� ���̱� (�̹����� ���� ������ �𸣰���)
	 * 
	 * @Override public noticeVO viewNotice(int ntc_seq) throws Exception{ NoticeVO
	 * noticeVO = noticeDAO.selectNotice(ntc_seq); return noticeVO; }
	 */
	
	//����
	@Override
	public void modNotice(NoticeVO noticeVO) throws Exception{
		noticeDAO.updateNotice(noticeVO);
	}
	
	@Override
	public void removeNotice(NoticeVO noticeVO) throws Exception{
		noticeDAO.deleteNotice(noticeVO);
	}

	@Override
	public NoticeVO viewNotice(int ntc_seq) throws Exception{
		return noticeDAO.viewNotice(ntc_seq);
	}
}
