package com.garo.www.search.dao;

import java.util.List;

import com.garo.www.company.vo.CompanyVO;

public interface SearchDAO {
	public List<CompanyVO> com_list(CompanyVO companyVO) throws Exception;
}
