package com.garo.www.notice.controller;

import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.member.vo.MemberVO;
import com.garo.www.notice.service.NoticeService;
import com.garo.www.notice.vo.NoticeVO;

@Controller("noticeController")
@RequestMapping(value = "/notice")
public class NoticeControllerImpl implements NoticeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private NoticeVO noticeVO;
	@Autowired
	private MemberVO memberVO;

	// �������� �ۼ�
	@Override
	@RequestMapping(value = "/addNotice.do", method = RequestMethod.POST)
	public ResponseEntity addNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		System.out.println("@@@�����°����Ͻ������");
		System.out.println(noticeVO.getNtc_name());
		System.out.println(noticeVO.getNtc_title());
		System.out.println(noticeVO.getNtc_content());

		try {
			noticeService.addNotice(noticeVO);
			message = "<script>";
			message += " alert('���������� ��ϵǾ����ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/notice/noticeList.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('���� �� ������ �߻��߽��ϴ�. �ٽ� �õ��� �ּ���');";
			message += " location.href='" + request.getContextPath() + "/notice/noticeForm.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		System.out.println("--------------------------" + resEntity);
		return resEntity;
	}

	// �������� �ۼ� ȭ��
	@RequestMapping(value = "/noticeForm.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeForm");
		return mav;
	}

	// �������� ����Ʈ ȭ��
	@Override
	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public ModelAndView listNotice(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<NoticeVO> noticesList = noticeService.listNotices();
    	HttpSession session=request.getSession();
		session=request.getSession();
		//String memberInfo = (String)session.getAttribute("memberInfo");	
		MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");	
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticesList", noticesList);
		//mav.addObject("memberInfo", memberInfo);		
		mav.addObject("memberInfo", memberVO);		
		mav.setViewName("/notice/noticeList");
		return mav;

	}

	@RequestMapping(value = "/viewNotice.do", method = RequestMethod.GET)
	public ModelAndView viewNotice(NoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("noticeVO", noticeService.viewNotice(noticeVO.getNtc_seq()));

		return mav;

	}

	@RequestMapping(value = "/modNotice.do", method = RequestMethod.POST)
	public ResponseEntity modNotice(@ModelAttribute("noticeVO") NoticeVO noticeVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String message = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			noticeService.modNotice(noticeVO);
			message = "<script>";
			message += " alert('���� �����߽��ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/notice/noticeList.do';";
			message += ("</script>");

		} catch (Exception e) {
			message = "<script>";
			message += " alert('������ ������ �����߽��ϴ�.');";
			message += " location.href='" + request.getContextPath() + "/notice/noticeList.do';";
			message += ("</script>");

		}

		ResponseEntity resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEnt;
	}
//		  �������� ����
		  
		  @Override
		  
		  @RequestMapping(value="/removeNotice.do" ,method = RequestMethod.POST)
		  public ResponseEntity removeNotice(NoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response) throws Exception{ 
		
		  response.setContentType("text/html; charset=UTF-8"); String
		  message = null; 
		  HttpHeaders responseHeaders = new HttpHeaders(); 
		  responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		  
		  try { 
			 
		  noticeService.removeNotice(noticeVO);
		  
		  message = "<script>"; 
		  message +="alert('���������� �����߽��ϴ�.');"; 
		  message +="location.href='"+request.getContextPath()+"/notice/noticeList.do';";
		  message +=("</script>"); 

		  } catch(Exception e) { 
			  message = "<script>"; 
			  message +="alert('�۾� �� ������ �߻��߽��ϴ�. �ٽ� �õ��� �ּ���.')"; 
			  message +="location.href='"+request.getContextPath()+"/notice/viewNotice.do';";
		      message +=("</script>"); 
		      e.printStackTrace(); 
		      
		  }
		  
		  ResponseEntity resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		  return resEnt; 
		  
		 }
		 


	}


