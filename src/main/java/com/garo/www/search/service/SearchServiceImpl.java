package com.garo.www.search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.garo.www.company.vo.CompanyVO;
import com.garo.www.search.dao.SearchDAO;

@Service("searchService")
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	private SearchDAO searchDAO;
	
	@Override
	public List<CompanyVO> com_list(CompanyVO companyVO) throws Exception{
		return searchDAO.com_list(companyVO);
		
	}
	
}
