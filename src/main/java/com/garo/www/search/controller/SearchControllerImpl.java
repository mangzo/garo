package com.garo.www.search.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.garo.www.company.vo.CompanyVO;
import com.garo.www.search.service.SearchService;

@Controller("searchController")
@RequestMapping(value="/search")
public class SearchControllerImpl {
	@Autowired
	private SearchService searchService;
	
	
	@RequestMapping(value = "/matching", method = RequestMethod.GET)
	public ModelAndView match(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView("/search/company");        
        return modelAndView;
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView com_list(CompanyVO companyVO, Locale locale, Model model) throws Exception {
		ModelAndView mav = new ModelAndView("/search/company_list");
		
		
		List<CompanyVO> companyVOList = searchService.com_list(companyVO); 
		
		mav.addObject("companyVOList", companyVOList);
		
		      
        return mav;
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView com_detail(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView("/search/company_detail");        
        return modelAndView;
	}
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public ModelAndView com_apply(Locale locale, Model model) {
		ModelAndView modelAndView = new ModelAndView("/search/company_apply");        
        return modelAndView;
	}
}

