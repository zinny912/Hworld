package com.hworld.base.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.DirectService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/direct/*")
@Slf4j
public class DirectController {
	
	@Autowired
	private DirectService directService;
	
	// 휴대폰 리스트 페이지
	@GetMapping("phoneList")
	public ModelAndView d1() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/phoneList");
		return modelAndView;
	}
	
	// 휴대폰 상세 페이지
	@GetMapping("phoneDetail")
	public ModelAndView d2() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/phoneDetail");
		return modelAndView;
	}
	
	// 액세서리 리스트 페이지
	@GetMapping("accessoryList")
	public ModelAndView d3() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/accessoryList");
		return modelAndView;
	}
	
	// 액세서리 리스트 페이지
	@GetMapping("accessoryDetail")
	public ModelAndView d4() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/accessoryDetail");
		return modelAndView;
	}
	
	// 휴대폰 & 액세서리 상품 추가 페이지
	@GetMapping("directAdd")
	public ModelAndView d5() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/directAdd");
		return modelAndView;
	}
//	@PostMapping("directAdd")
//	public ModelAndView setInsert(DirectVO directVO) throws Exception{
//		ModelAndView modelAndView = new ModelAndView();
//		log.error("*********** 카테고리코드: {}", directVO.getCategoryCode());
//		log.error("*********** 브랜드코드: {}", directVO.getBrandCode());
//		log.error("*********** 상품명: {}", directVO.getDirectName());
//		log.error("*********** 색깔코드: {}", directVO.getColorCode());
//		log.error("*********** 저장용량: {}", directVO.getSaveCapacity());
//		log.error("*********** 상품가격: {}", directVO.getDirectPrice());
//		log.error("*********** 상품재고: {}", directVO.getDirectStock());
//		log.error("*********** 상품코드: {}", directVO.getDirectCode());
//		//directService.setInsert(directVO);
//		modelAndView.setViewName("hworld/directAdd");
//		return modelAndView;
//	}
	@PostMapping("directAdd")
	public ModelAndView setInsert(String categoryCode, String brandCode, String directName, String directContents,
			String[] colorCode, String[] saveCapacity, Integer[] directPrice, Integer[] directStock, String[] directCode, DirectVO directVO, MultipartFile[] multipartFiles) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
		System.out.println(multipartFiles);
		
		//반복문으로 directVO 하나 완성하기 + 완성될 때 서비스로 insert 메서드 호출
		for(int i=0; i<directCode.length; i++) {
			DirectVO directVO2 = new DirectVO();
			directVO2.setCategoryCode(categoryCode);
			directVO2.setBrandCode(brandCode);
			directVO2.setDirectName(directName);
			directVO2.setDirectContents(directContents);
			directVO2.setColorCode(colorCode[i]);
			directVO2.setSaveCapacity(saveCapacity[i]);
			directVO2.setDirectPrice(directPrice[i]);
			directVO2.setDirectStock(directStock[i]);
			directVO2.setDirectCode(directCode[i]);

			
			
			directService.setInsert(directVO2, multipartFiles);
		}
		
		modelAndView.setViewName("redirect:./phoneList");
		return modelAndView;
	}

	// 휴대폰 & 악세사리 상품 수정 페이지
	@GetMapping("directUpdate")
	public ModelAndView d6() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/directUpdate");
		return modelAndView;
	}
	
	// 상품 번호 이동 페이지
	@GetMapping("directNumMove")
	public ModelAndView d7() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/directNumMove");
		return modelAndView;
	}
	
	// 휴대폰 주문 페이지
	@GetMapping("phoneOrder")
	public ModelAndView d8() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/phoneOrder");
		return modelAndView;
	}
	
	// 액세서리 주문 페이지
	@GetMapping("accessoryOrder")
	public ModelAndView d9() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/accessoryOrder");
		return modelAndView;
	}
	
	

	/*
	 * //상품 리스트
	 * 
	 * @GetMapping("test")
	 * 
	 * @ResponseBody public ModelAndView getList(ModelAndView mv , Pager pager)
	 * throws Exception{ List<DirectVO>ar = directService.getList(pager);
	 * mv.addObject("list", ar); mv.setViewName("test");
	 * 
	 * return mv; } //상품 상세페이지
	 * 
	 * @GetMapping("detail") public ModelAndView getDetail(DirectVO directVO)throws
	 * Exception{ ModelAndView mv = new ModelAndView(); directVO =
	 * directService.getDetail(directVO);
	 * 
	 * mv.addObject("directVO", directVO); mv.setViewName("directDetail");
	 * 
	 * return mv;
	 * 
	 * } //상품 추가
	 * 
	 * @GetMapping("add") public ModelAndView setInsert(@ModelAttribute DirectVO
	 * directVO)throws Exception{ ModelAndView mv = new ModelAndView();
	 * 
	 * mv.setViewName("directAdd"); return mv; } //상품 추가
	 * 
	 * @PostMapping("add") public ModelAndView setInsert(@Valid DirectVO directVO,
	 * BindingResult bindingResult)throws Exception{ ModelAndView mv = new
	 * ModelAndView(); int result = directService.setInsert(directVO);
	 * mv.setViewName("redirect:./directList"); return mv; } //상품 삭제
	 * 
	 * @PostMapping("delete") public ModelAndView setDelete(DirectVO directVO)throws
	 * Exception{ ModelAndView mv = new ModelAndView(); int result =
	 * directService.setDelete(directVO); mv.setViewName("redirect:./directList");
	 * return mv; }
	 */
	
	
	
}
