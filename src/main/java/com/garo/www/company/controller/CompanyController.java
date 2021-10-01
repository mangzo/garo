package com.garo.www.company.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.company.vo.CompanyVO;

public interface CompanyController {
	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addCompany(@ModelAttribute("company") CompanyVO company, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listCompany(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity overlapped(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String comsubmit(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public String comLoginform(HttpServletRequest request, HttpServletResponse response)throws Exception;
	
}
