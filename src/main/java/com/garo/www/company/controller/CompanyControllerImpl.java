package com.garo.www.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.company.dao.CompanyDAO;
import com.garo.www.company.service.CompanyService;
import com.garo.www.company.vo.CompanyVO;

@Controller("companyController")
@RequestMapping(value="/company")
public class CompanyControllerImpl implements CompanyController{
	@Autowired
	private CompanyService companyService;
	@Autowired
	private CompanyVO companyVO;
	
	@Override
	@RequestMapping(value = "/cmpsubmit.do", method = RequestMethod.GET)
	public String comsubmit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("-----------+++++++++++");
		return "/company/cmpSubmit";
	}
	@RequestMapping(value = "/comlogin.do", method = RequestMethod.GET)
	public String comLoginform(HttpServletRequest request, HttpServletResponse response) {
		
		return "/company/cmpLoginForm";
	}
	
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		companyVO = companyService.login(loginMap);
		if(companyVO!= null && companyVO.getCmp_id()!=null){
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("companyInfo",companyVO);
			mav.setViewName("redirect:/home.do");
			System.out.println("@@@@@@@@@");
		}
		
		else{
			String message="아이디나 비밀번호가 틀립니다. 다시 로그인해주세요";
			mav.addObject("message", message);
			mav.setViewName("/company/comLoginForm");
			System.out.println("@@@@@@@@@123");
		}

		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/logout" ,method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session=request.getSession();
		session.setAttribute("loginId", false);
		session.removeAttribute("companyInfo");
		mav.setViewName("redirect:/home.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/addCompany" ,method = RequestMethod.POST)
	public ResponseEntity addCompany(@ModelAttribute("companyVO") CompanyVO vo,
			                HttpServletRequest request, HttpServletResponse response) throws Exception {
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
	
		try {
			System.out.println("\\\\\0909090!!");
		    companyService.addCompany(vo);
		    message  = "<script>";
		    message +=" alert('회원 가입을 마쳤습니다.로그인창으로 이동합니다.');";
		    message += " location.href='"+request.getContextPath()+"/company/comlogin.do';";
		    message += " </script>";
		    
		}catch(Exception e) {
			message  = "<script>";
		    message +=" alert('작업 중 오류가 발생했습니다. 다시 시도해 주세요');";
		    message += " location.href='"+request.getContextPath()+"/company/comsubmit.do';";
		    message += " </script>";
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		System.out.println("--------------------------"+resEntity);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value="/listCompany" ,method = RequestMethod.GET)
	public ModelAndView listCompany(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<CompanyVO> membersList = companyService.listCompanys();
        ModelAndView mav = new ModelAndView();
        mav.addObject("companysList", membersList);
        mav.setViewName("/company/listCompany");
        return mav;
	}
	
	
	@Override
	@RequestMapping(value="/overlapped" ,method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception{
		ResponseEntity resEntity = null;
		String result = companyService.overlapped(id);
		resEntity =new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
}

