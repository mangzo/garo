package com.garo.www.notice.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.notice.vo.NoticeVO;

public interface NoticeController {
	
	
//	public ResponseEntity addNotice(@ModelAttribute("notice") NoticeVO notice, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listNotice(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity addNotice(@ModelAttribute("notice") NoticeVO notice, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView viewNotice(NoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity modNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;
			
	public ResponseEntity removeNotice(NoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public int emailConfirm(String email) throws Exception;
//	public ResponseEntity overlapped(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
//	public String memsubmit(HttpServletRequest request, HttpServletResponse response)throws Exception;
//	public String memLoginform(HttpServletRequest request, HttpServletResponse response)throws Exception;
}
