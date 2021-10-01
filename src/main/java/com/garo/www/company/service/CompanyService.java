package com.garo.www.company.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.garo.www.company.vo.CompanyVO;

public interface CompanyService {
	public void addCompany(CompanyVO VO) throws Exception;
	public String overlapped(String id) throws Exception;
	public CompanyVO login(Map loginMap) throws Exception;
	public List<CompanyVO> listCompanys() throws Exception;

}
