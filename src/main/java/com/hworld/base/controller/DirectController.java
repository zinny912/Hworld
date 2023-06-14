package com.hworld.base.controller;

import java.nio.charset.StandardCharsets;
import java.sql.Array;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.apache.catalina.util.URLEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.service.DirectService;
import com.hworld.base.service.OrderService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OrderVO;
import com.hworld.base.vo.PlanVO;
import com.hworld.base.vo.QnaVO;
import com.hworld.base.vo.ReviewVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/direct/*")
@Slf4j
public class DirectController {
	
	@Autowired
	private DirectService directService;
	
	
	// 휴대폰 리스트 페이지
	@GetMapping("phoneList")
	public ModelAndView getList(ModelAndView mv , Pager pager, @RequestParam(value = "sortType", defaultValue = "latest") String sortType) throws Exception{
		
	        // sortType에 따라 정렬 유형 설정
	        if (sortType.equals("priceHigh")) {
	            pager.setSortType("priceHigh");
	        } else if (sortType.equals("priceLow")) {
	        	pager.setSortType("priceLow");
	        } else {
	        	pager.setSortType("latest");
	        }

	        List<DirectVO> ar = directService.getList(pager); 
	        log.error(ar.get(0).getDirectCode());
	        
		mv.addObject("list", ar);
		mv.setViewName("hworld/phoneList");
		return mv;
	}

	// 휴대폰 상세 페이지
	@GetMapping("phoneDetail")
	public ModelAndView getDetail(String slicedCode, QnaVO qnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();

	    List<DirectVO> ar = directService.getDetail(slicedCode);
	   
	    List<PlanVO> existPlanList = directService.getExistPlanList();
	    List<PlanVO> planList = directService.getPlanList();
	    List<QnaVO> qnaList = directService.getDirectQna(qnaVO); 
	    List<QnaVO> pQna = new ArrayList<>();
		for(QnaVO qna : qnaList) {
			String newCode = qna.getNewCode();
			if(newCode.equals("P01")) {
				pQna.add(qna);
			}
		}
	    List<PlanVO> gList = new ArrayList<>();
		List<PlanVO> sList = new ArrayList<>();
		List<PlanVO> tList = new ArrayList<>();
		List<PlanVO> zList = new ArrayList<>();
		List<PlanVO> wList = new ArrayList<>();
		List<PlanVO> hList = new ArrayList<>();

	    for (PlanVO plan : planList) {
		    String planNum = plan.getPlanNum();
		    if (planNum.startsWith("G")) {
		        gList.add(plan);
		    } else if (planNum.startsWith("S")) {
		        sList.add(plan);
		    } else if (planNum.startsWith("T")) {
		        tList.add(plan);
		    } else if (planNum.startsWith("Z")) {
		        zList.add(plan);
		    } else if (planNum.startsWith("W")) {
		        wList.add(plan);
		    } else if (planNum.startsWith("H")) {
		        hList.add(plan);
		    }
		}
	    
	    List<ReviewVO> reviews = directService.getReview(slicedCode);//slicedCode로 페이징된 리뷰 목록 조회
	    List<ReviewVO> pReview = new ArrayList<>();
	    for(ReviewVO review : reviews) {
	    	String categoryCode = review.getCategoryCode();
	    	if(categoryCode.equals("01")) {
	    		pReview.add(review);
	    	}
	    }
	    
		mv.addObject("existList", existPlanList);
		mv.addObject("gList", gList);
		mv.addObject("sList", sList);
		mv.addObject("tList", tList);
		mv.addObject("zList", zList);
		mv.addObject("wList", wList);
		mv.addObject("hList", hList);
		
		mv.addObject("qnaList", pQna);
		
	    mv.addObject("list", ar);
	    mv.addObject("review",pReview);
	    mv.setViewName("hworld/phoneDetail");

		return mv;
	}

//	@PostMapping("selectedPlan")
//	public ModelAndView getSelectedPlan(@RequestParam("slicedCode") String slicedCode,PlanVO planVO) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		PlanVO selectedPlan = directService.getSelectedPlan(planVO);
//		log.error(slicedCode);
//		log.error("{}<========= 선택된 데이터",selectedPlan);
//		 mv.addObject("result", selectedPlan);
//		 mv.setViewName("redirect:/direct/phoneDetail?slicedCode=" + slicedCode); // 결과를 보여줄 JSP 페이지의 이름
//		return mv;
//	}
	
	
	// 액세서리 리스트 페이지
	@GetMapping("accessoryList")
	public ModelAndView getAccList(ModelAndView mv, Pager pager, @RequestParam(value = "sortType", defaultValue = "latest") String sortType, HttpServletRequest request, HttpServletResponse response) throws Exception {

	    // sortType에 따라 정렬 유형 설정
	    if (sortType.equals("priceHigh")) {
	        pager.setSortType("priceHigh");
	    } else if (sortType.equals("priceLow")) {
	        pager.setSortType("priceLow");
	    } else {
	        pager.setSortType("latest");
	    }
	    
	    List<DirectVO> ar = directService.getAccList(pager);
	    
	    List<DirectVO> recentlyViewedProducts = directService.getSeenList(request);
	    
	    mv.addObject("recentlyViewedProducts", recentlyViewedProducts);
	    mv.addObject("list", ar);
	    mv.setViewName("hworld/accessoryList");
	    
	    return mv;
	}

	// 액세서리 디테일 페이지
	@GetMapping("accessoryDetail")
	public ModelAndView getAccDetail(DirectVO directVO, String slicedCode, HttpServletRequest request, HttpServletResponse response, QnaVO qnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<DirectVO> ar = directService.getAccDetail(slicedCode);
		
		List<QnaVO> qnaList = directService.getDirectQna(qnaVO); 
		List<QnaVO> accQna = new ArrayList<>();
		for(QnaVO qna : qnaList) {
			String newCode = qna.getNewCode();
			if(!newCode.equals("P01")) {
				accQna.add(qna);
			}
		}
		
	    directService.setSeenList(request, response, slicedCode);
	    List<ReviewVO> reviews = directService.getReview(slicedCode);//slicedCode로 페이징된 리뷰 목록 조회
	    List<ReviewVO> accReview = new ArrayList<>();
	    for(ReviewVO review : reviews) {
	    	String categoryCode = review.getCategoryCode();
	    	if(!categoryCode.equals("01")) {
	    		accReview.add(review);
	    	}
	    }

		mv.addObject("list", ar);		
		mv.addObject("qnaList", accQna);
		mv.addObject("review",accReview);
		mv.setViewName("hworld/accessoryDetail");
		return mv;
	}
	
	// 휴대폰 & 액세서리 상품 추가 페이지
	@GetMapping("directAdd")
	public ModelAndView setInsert() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/directAdd");
		return modelAndView;
	}
	@PostMapping("directAdd")
	public ModelAndView setInsert(String categoryCode, String brandCode, String directName, String directContents,
			String[] colorCode, String[] saveCapacity, Integer[] directPrice, Integer[] directStock, String[] directCode, DirectVO directVO, MultipartFile[] multipartFiles) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
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
	
	// 휴대폰 & 액세서리 상품 추가 페이지
	@GetMapping("accessoryAdd")
	public ModelAndView setAccInsert() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("hworld/accessoryAdd");
		return modelAndView;
	}
	
	@PostMapping("accessoryAdd")
	public ModelAndView setAccInsert(String categoryCode, String brandCode, String directName, String directContents,
			String[] colorCode, String[] saveCapacity, Integer[] directPrice, Integer[] directStock, String[] directCode, DirectVO directVO, MultipartFile[] multipartFiles) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
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
		
		modelAndView.setViewName("redirect:./accessoryList");
		return modelAndView;
	}

	
	// 휴대폰 상품 수정 페이지
	@GetMapping("directUpdate")
	public ModelAndView setUpdate(DirectVO directVO, String slicedCode) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		List<DirectVO> ar = directService.getDetail(slicedCode);

		modelAndView.setViewName("hworld/directUpdate");
		modelAndView.addObject("directVO", directVO);
		modelAndView.addObject("list", ar);
		return modelAndView;
	}
	
	@PostMapping("directUpdate")
	public ModelAndView setUpdate(String categoryCode, String brandCode, String directName, String directContents,
			String[] colorCode, String[] saveCapacity, Integer[] directPrice, Integer[] directStock, String[] directCode, DirectVO directVO, MultipartFile[] multipartFiles, String slicedCode) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		
		slicedCode = directVO.getDirectCode().substring(directVO.getDirectCode().length() - 5);
		directService.setDelete(slicedCode);
		
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

		modelAndView.setViewName("redirect:/direct/phoneDetail?slicedCode="+slicedCode);
		return modelAndView;
	}
	@GetMapping("accessoryUpdate")
	public ModelAndView setUpdate(ModelAndView mv,DirectVO directVO, String slicedCode) throws Exception{
		List<DirectVO> ar = directService.getAccDetail(slicedCode);

		mv.setViewName("hworld/accessoryUpdate");
		mv.addObject("directVO", directVO);
		mv.addObject("list", ar);
		return mv;
	}
	@PostMapping("accessoryUpdate")
	public ModelAndView setUpdate(ModelAndView mv, String categoryCode, String brandCode, String directName, String directContents,
			String[] colorCode, String[] saveCapacity, Integer[] directPrice, Integer[] directStock, String[] directCode, DirectVO directVO, MultipartFile[] multipartFiles, String slicedCode) throws Exception{

		slicedCode = directVO.getDirectCode().substring(directVO.getDirectCode().length() - 5);
		directService.setDelete(slicedCode);
		
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

		mv.setViewName("redirect:/direct/accessoryDetail?slicedCode="+slicedCode);
		return mv;
	}

	
	
	//리뷰 추가
	@PostMapping("reviewAdd")
	public ModelAndView setReviewAdd(ReviewVO reviewVO, ModelAndView mv) throws Exception {
		int result = directService.setReviewAdd(reviewVO);
		String slicedCode = reviewVO.getSlicedCode();  // reviewVO에서 slicedCode 값을 가져온다
		String redirectUrl = "/direct/phoneDetail?slicedCode=" + slicedCode;  // 리다이렉트할 URL을 생성한다
		
		mv.setViewName("redirect:" + redirectUrl);  // 리다이렉트할 URL을 설정한다
		return mv;
	}
		
	// 리뷰 수정 처리
	@PostMapping("reviewUpdate")
	public ModelAndView setReviewUpdate(ReviewVO reviewVO) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    int result = directService.setReviewUpdate(reviewVO);
	    String slicedCode = reviewVO.getSlicedCode(); // reviewVO에서 slicedCode 값을 가져옵니다.
	    String redirectUrl = "/direct/phoneDetail?slicedCode=" + slicedCode;  // 리다이렉트할 URL을 생성합니다.
	    mv.setViewName("redirect:" + redirectUrl);  // 리다이렉트할 URL을 설정합니다.
	    return mv;
	}
	
	//리뷰 삭제 
	@PostMapping("reviewDelete")
	public ModelAndView setReviewDelete(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = directService.setReviewDelete(reviewVO);
		String slicedCode = reviewVO.getSlicedCode();  // reviewVO에서 slicedCode 값을 가져옵니다.
	    String redirectUrl = "/direct/phoneDetail?slicedCode=" + slicedCode;  // 리다이렉트할 URL을 생성합니다.
	    mv.setViewName("redirect:" + redirectUrl);  // 리다이렉트할 URL을 설정합니다.
		return mv;
	}
	
	//상품 문의 추가
	@PostMapping("directQnaAdd")
	public ModelAndView setQnaAdd(QnaVO qnaVO, ModelAndView mv) throws Exception {
		int result = directService.setQnaAdd(qnaVO);
		String slicedCode = qnaVO.getSlicedCode();  // reviewVO에서 slicedCode 값을 가져온다
		
	    
		String redirectUrl = "/direct/phoneDetail?slicedCode=" + slicedCode;  // 리다이렉트할 URL을 생성한다
		mv.setViewName("redirect:" + redirectUrl);  // 리다이렉트할 URL을 설정한다
		return mv;
	}
	//상품 답글 추가 (admin)
	@PostMapping("directReplyAdd")
	public ModelAndView setReplyAdd(QnaVO qnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = directService.setReplyAdd(qnaVO);
		String slicedCode = qnaVO.getSlicedCode();  // reviewVO에서 slicedCode 값을 가져온다
		String redirectUrl = "/direct/phoneDetail?slicedCode=" + slicedCode;  // 리다이렉트할 URL을 생성한다
		mv.setViewName("redirect:" + redirectUrl);  // 리다이렉트할 URL을 설정한다
		return mv;
		
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
	@PostMapping("accessoryOrder")
	public ModelAndView setInsert(OrderDirectVO orderDirectVO, OrderVO orderVO, HttpSession session) throws Exception {
	    ModelAndView mv = new ModelAndView();

		mv.addObject("orderDirectVO", orderDirectVO);
		mv.addObject("orderVO", orderVO);
	    mv.setViewName("hworld/accessoryOrder");
	    return mv;
	}



}
