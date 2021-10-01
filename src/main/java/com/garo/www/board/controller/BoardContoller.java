package com.garo.www.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("boardController")
@RequestMapping(value="/board")
public class BoardContoller {
	
	@RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	public String faq(Locale locale, Model model) {
		
		return "/board/faq";
	}
	@RequestMapping(value = "/qst_page.do", method = RequestMethod.GET)
	public String qst_page(Locale locale, Model model) {
		
		return "/board/question_page";
	}
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {
		
		return "/board/notice/page";
	}
	@RequestMapping(value = "/cmp_page.do", method = RequestMethod.GET)
	public String cmp_page(Locale locale, Model model) {
		
		return "/board/cmp_page";
	}
}
