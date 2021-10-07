package com.garo.www.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.garo.www.notice.vo.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAOImpl  implements NoticeDAO{
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public NoticeVO login(Map loginMap) throws DataAccessException{
		NoticeVO notice=(NoticeVO)sqlSession.selectOne("notice.login",loginMap);
	   return notice;
	}
	

	@Override
	public void insertNewNotice(NoticeVO vo) throws DataAccessException{
		System.out.println("@@@DAOImpl");
		sqlSession.insert("notice.insertNewNotice",vo);
	}
	 
	@Override
	public List<NoticeVO> selectList() throws DataAccessException {
		return sqlSession.selectList("notice.selectNoticeList");
	}
	public int emailConfirm(String mem_id) throws DataAccessException {
		return sqlSession.selectOne("notice.emailConfirm", mem_id);
	}
	@Override
	public String selectOverlappedID(String mem_id) throws DataAccessException {
		return sqlSession.selectOne("notice.selectOverlappedID",mem_id);
	}
	
	private int selectNewntc_seq() throws DataAccessException {
		return sqlSession.selectOne("notice.insertNewntc_seq");
	} 
	
	@Override
	public void updateNotice(NoticeVO noticeVO) throws DataAccessException {
		sqlSession.update("notice.updateNotice", noticeVO);
		
	}
	
	@Override
	public void deleteNotice(NoticeVO noticeVO) throws DataAccessException {
		sqlSession.delete("notice.deleteNotice", noticeVO);
	}
	
	@Override
	public NoticeVO viewNotice(int ntc_seq) throws DataAccessException {
		return sqlSession.selectOne("notice.viewNotice", ntc_seq);
	}
}

