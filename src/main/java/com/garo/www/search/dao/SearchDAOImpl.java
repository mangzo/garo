package com.garo.www.search.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.garo.www.company.vo.CompanyVO;

	
@Repository("searchDAO")
public class SearchDAOImpl implements SearchDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<CompanyVO> com_list(CompanyVO companyVO) throws Exception{
		return sqlSession.selectList("sql.company.selectList_search", companyVO);
	}
}
