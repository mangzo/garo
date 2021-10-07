package com.garo.www.matching.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.matching.vo.MatchingVO;

public interface MatchingController {
	
	
//	public ResponseEntity addMatching(@ModelAttribute("matching") MatchingVO matching, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listMatching(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addMatching(@ModelAttribute("matching") MatchingVO matching, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView viewMatching(MatchingVO matchingVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity modMatching(@ModelAttribute("matchingVO") MatchingVO matchingVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
			
	public ResponseEntity removeMatching(MatchingVO matchingVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public int emailConfirm(String email) throws Exception;
//	public ResponseEntity overlapped(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public String memsubmit(HttpServletRequest request, HttpServletResponse response)throws Exception;
//	public String memLoginform(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
