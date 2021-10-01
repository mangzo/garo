package com.garo.www.company.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.garo.www.company.dao.CompanyDAO;
import com.garo.www.company.vo.CompanyVO;

@Service("companyService")
@Transactional(propagation=Propagation.REQUIRED)
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyDAO companyDAO;
	
	@Override
	public CompanyVO login(Map loginMap) throws Exception{
		return companyDAO.login(loginMap);
	}
	
	@Override
	public void addCompany(CompanyVO companyVO) throws Exception{
		companyDAO.insertNewCompany(companyVO);
	}
	
	@Override
	public String overlapped(String id) throws Exception{
		return companyDAO.selectOverlappedID(id);
	}
	@Override
	public List<CompanyVO> listCompanys() throws Exception{
		return companyDAO.selectList();
		
	}
	
}
