package com.garo.www.member.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listMember(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public int emailConfirm(String email) throws Exception;
	public ResponseEntity overlapped(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String memsubmit(HttpServletRequest request, HttpServletResponse response)throws Exception;
	public String memLoginform(HttpServletRequest request, HttpServletResponse response)throws Exception;
	
	}


