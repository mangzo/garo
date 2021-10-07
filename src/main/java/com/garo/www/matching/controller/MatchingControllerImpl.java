package com.garo.www.matching.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.matching.service.MatchingService;
import com.garo.www.matching.vo.MatchingVO;
import com.garo.www.member.vo.MemberVO;

@Controller("matchingController")
@RequestMapping(value = "/matching")
public class MatchingControllerImpl implements MatchingController {
	@Autowired
	private MatchingService matchingService;
	@Autowired
	private MatchingVO matchingVO;
	@Autowired
	private MemberVO memberVO;

	// �������� �ۼ�
	@Override
	@RequestMapping(value = "/addMatching", method = RequestMethod.POST)
	public ResponseEntity addMatching(@ModelAttribute("matchingVO") MatchingVO vo, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		System.out.println("@@@�����°����Ͻ������");
//		System.out.println(vo.getNtc_name());
//		System.out.println(vo.getNtc_title());
//		System.out.println(vo.getNtc_content());

		try {
			matchingService.addMatching(vo);
			message = "<script>";
			message += " alert('���������� ��ϵǾ����ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/matching/listMatching';";
			message += " </script>";

		} catch (Exception e) {
			
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		System.out.println("--------------------------" + resEntity);
		return resEntity;
	}

	// �������� �ۼ� ȭ��
	@RequestMapping(value = "/matchingForm", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/matching/matchingForm");
		return mav;
	}

	// �������� ����Ʈ ȭ��
	@Override
	@RequestMapping(value = "/listMatching", method = RequestMethod.GET)
	public ModelAndView listMatching(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<MatchingVO> matchingsList = matchingService.listMatching();

		System.out.println("@@@@" + matchingsList.size());
		
    	HttpSession session=request.getSession();
		session=request.getSession();
		//String memberInfo = (String)session.getAttribute("memberInfo");	
		MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");	
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("matchingsList", matchingsList);
		//mav.addObject("memberInfo", memberInfo);		
		mav.addObject("memberInfo", memberVO);		
		mav.setViewName("/matching/matchingList");
		return mav;

	}

	@RequestMapping(value = "/viewMatching.do", method = RequestMethod.GET)
	public ModelAndView viewMatching(MatchingVO matchingVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
//		mav.addObject("matchingVO", matchingService.viewMatching(matchingVO.getNtc_seq()));

		return mav;

	}

	@RequestMapping(value = "/modMatching.do", method = RequestMethod.POST)
	public ResponseEntity modMatching(@ModelAttribute("matchingVO") MatchingVO matchingVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String message = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			matchingService.modMatching(matchingVO);
			message = "<script>";
			message += " alert('���� �����߽��ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/matching/listMatching.do';";
			message += ("</script>");

		} catch (Exception e) {
			message = "<script>";
			message += " alert('������ ������ �����߽��ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/matching/listMatching.do';";
			message += ("</script>");

		}

		ResponseEntity resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEnt;
	}
//		  �������� ����
		  
		  @Override
		  
		  @RequestMapping(value="/removeMatching.do" ,method = RequestMethod.POST)
		  public ResponseEntity removeMatching(MatchingVO matchingVO, HttpServletRequest request, HttpServletResponse response) throws Exception{ 
		
		  response.setContentType("text/html; charset=UTF-8"); String
		  message = null; 
		  HttpHeaders responseHeaders = new HttpHeaders(); 
		  responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		  
		  try { 
			 
		  matchingService.removeMatching(matchingVO);
		  
		  message = "<script>"; 
		  message +="alert('���������� �����߽��ϴ�.');"; 
		  message +="location.href='"+request.getContextPath()+"/matching/listMatching.do';";
		  message +=("</script>"); 

		  } catch(Exception e) { 
			  message = "<script>"; 
			  message +="alert('�۾� �� ������ �߻��߽��ϴ�. �ٽ� �õ��� �ּ���.')"; 
			  message +="location.href='"+request.getContextPath()+"/matching/viewMatching.do';";
		      message +=("</script>"); 
		      e.printStackTrace(); 
		      
		  }
		  
		  ResponseEntity resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		  return resEnt; 
		  
		 }
		 


	}


