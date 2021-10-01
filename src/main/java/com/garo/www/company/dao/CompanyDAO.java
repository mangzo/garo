package com.garo.www.company.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.garo.www.company.vo.CompanyVO;

public interface CompanyDAO {
	public CompanyVO login(Map loginMap) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
	public List<CompanyVO> selectList() throws DataAccessException;
	public int emailConfirm(String id) throws DataAccessException;
	public void insertNewCompany(CompanyVO vo) throws DataAccessException;
}
