package com.hworld.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.DirectService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;

@Controller
public class HomeController {
	
	@Autowired
	private DirectService directService;


	@RequestMapping("/")
	public ModelAndView home(Pager pager, @RequestParam(value = "sortType", defaultValue = "latest") String sortType) throws Exception {
		ModelAndView mv = new ModelAndView();
		
        pager.setSortType("priceHigh");

		
        List<DirectVO> ar = directService.getList(pager); 
	    List<DirectVO> ar2 = directService.getAccList(pager);
	    
        
		mv.addObject("phoneList", ar);
		mv.addObject("accList", ar2);


		mv.setViewName("index");

		return mv;
	}
}
