package com.garo.www.search.service;

import java.util.List;

import com.garo.www.company.vo.CompanyVO;

public interface SearchService {
	public List<CompanyVO> com_list(CompanyVO companyVO) throws Exception;
}
