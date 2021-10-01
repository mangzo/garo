package com.garo.www.company.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.garo.www.company.vo.CompanyVO;

@Repository("companyDAO")
public class CompanyDAOImpl  implements CompanyDAO{
	@Autowired
	private SqlSession sqlSession;	
	
	@Override
	public CompanyVO login(Map loginMap) throws DataAccessException{
		CompanyVO company=(CompanyVO)sqlSession.selectOne("sql.company.login",loginMap);
	   return company;
	}
	
	@Override
	public void insertNewCompany(CompanyVO vo) throws DataAccessException{
		sqlSession.insert("sql.company.insertNewCompany",vo);
	}
	
	@Override
	public List<CompanyVO> selectList() throws DataAccessException {
		return sqlSession.selectList("sql.company.selectList");
	}
	public int emailConfirm(String cmp_email) throws DataAccessException {
		return sqlSession.selectOne("sql.company.emailConfirm", cmp_email);
	}
	@Override
	public String selectOverlappedID(String cmp_id) throws DataAccessException {
		return sqlSession.selectOne("sql.company.selectOverlappedID",cmp_id);
	}
}
