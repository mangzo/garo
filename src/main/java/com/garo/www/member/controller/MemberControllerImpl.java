package com.garo.www.member.controller;

import java.util.List;
import java.util.Locale;
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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.member.dao.MemberDAO;
import com.garo.www.member.service.MemberService;
import com.garo.www.member.vo.MemberVO;

@Controller("memberController")
@RequestMapping(value="/member")
public class MemberControllerImpl implements MemberController{
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	
	@Override
	@RequestMapping(value = "/memsubmit.do", method = RequestMethod.GET)
	public String memsubmit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("-----------+++++++++++");
		return "/member/memSubmit";
	}
	@RequestMapping(value = "/memlogin.do", method = RequestMethod.GET)
	public String memLoginform(HttpServletRequest request, HttpServletResponse response) {
		
		return "/member/memLoginForm";
	}
	
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(loginMap);
		if(memberVO!= null && memberVO.getMem_email()!=null){
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo",memberVO);
			mav.setViewName("redirect:/home.do");
		}else{
			String message="아이디나 비밀번호가 틀립니다. 다시 로그인해주세요";
			mav.addObject("message", message);
			mav.setViewName("/member/memLoginForm");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value="/logout" ,method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session=request.getSession();
		session.setAttribute("loginId", false);
		session.removeAttribute("memberInfo");
		mav.setViewName("redirect:/home.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/addMember" ,method = RequestMethod.POST)
	public ResponseEntity addMember(@ModelAttribute("memberVO") MemberVO vo,
			                HttpServletRequest request, HttpServletResponse response) throws Exception {
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		System.out.println(vo.getMem_email()+"!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println(vo.getPwd());
		System.out.println(vo.getName());
		System.out.println(vo.getAddr());
		System.out.println(vo.getBirth());
		System.out.println(vo.getAddr_detail());
		System.out.println(vo.getPhone1());
		System.out.println(vo.getPhone2());
		System.out.println(vo.getPhone3());
		try {
			System.out.println("\\\\\0909090!!");
		    memberService.addMember(vo);
		    message  = "<script>";
		    message +=" alert('회원 가입을 마쳤습니다.로그인창으로 이동합니다.');";
		    message += " location.href='"+request.getContextPath()+"/member/memlogin.do';";
		    message += " </script>";
		    
		}catch(Exception e) {
			message  = "<script>";
		    message +=" alert('작업 중 오류가 발생했습니다. 다시 시도해 주세요');";
		    message += " location.href='"+request.getContextPath()+"/member/memsubmit.do';";
		    message += " </script>";
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		System.out.println("--------------------------"+resEntity);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value="/listMember" ,method = RequestMethod.GET)
	public ModelAndView listMember(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<MemberVO> membersList = memberService.listMembers();
        ModelAndView mav = new ModelAndView();
        mav.addObject("membersList", membersList);
        mav.setViewName("/member/listMember");
        return mav;
	}
	
	@Override
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.POST)
	public int emailConfirm(@RequestParam String email) {
		int result=0;
		try {
			result = memberService.emailConfirm(email);
		}catch(Exception e){
			System.out.println("error : "+e.getMessage());
		}
		return result;
	}
	
	@Override
	@RequestMapping(value="/overlapped" ,method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception{
		ResponseEntity resEntity = null;
		String result = memberService.overlapped(id);
		resEntity =new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}

//	일반회원용
	@RequestMapping(value = "/profile.do", method = RequestMethod.GET)
	public String profile(Locale locale, Model model) {
		
		return "/member/mypage/profile";}
	
	@RequestMapping(value = "/matching.do", method = RequestMethod.GET)
	public String matching(Locale locale, Model model) {
		
		return "/member/mypage/matching";}
//	기업회원용
	@RequestMapping(value = "/cmp_profile.do", method = RequestMethod.GET)
	public String cmp_profile(Locale locale, Model model) {
		
		return "/member/cmp_mypage/cmp_profile";}
	@RequestMapping(value = "/cmp_matching.do", method = RequestMethod.GET)
	public String cmp_matching(Locale locale, Model model) {
		
		return "/member/cmp_mypage/cmp_matching";}
	
	
	
	
//관리자용	
	@RequestMapping(value = "/companyList.do", method = RequestMethod.GET)
	public String companyList(Locale locale, Model model) {
		
		return "/member/admin/companyList";}
	@RequestMapping(value = "/memberList.do", method = RequestMethod.GET)
	public String memberList(Locale locale, Model model) {
		
		return "/member/admin/memberList";}
	@RequestMapping(value = "/matchingList.do", method = RequestMethod.GET)
	public String matchingList(Locale locale, Model model) {
		
		return "/member/admin/matchingList";}
	
}

