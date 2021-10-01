package com.garo.www.main;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.garo.www.common.base.BaseController;

@Controller("mainController")
@EnableAspectJAutoProxy
public class MainController extends BaseController {
	@RequestMapping(value = "/home.do", method={RequestMethod.POST,RequestMethod.GET})
	public String home(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		return "home";
	}
	@RequestMapping(value = "/test", method={RequestMethod.POST,RequestMethod.GET})
	public String test(HttpServletRequest request, HttpServletResponse response) throws Exception{
		return "test";
	}
	
}
