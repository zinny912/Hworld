package com.hworld.base.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hworld.base.dao.DirectDAO;
import com.hworld.base.dao.PlanDAO;
import com.hworld.base.service.DirectService;
import com.hworld.base.service.PlanService;
import com.hworld.base.util.Pager;
import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.BaseVO;
import com.hworld.base.vo.BillVO;
import com.hworld.base.vo.ExtraPlanVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.OrderDirectVO;
import com.hworld.base.vo.OtherTelecomVO;
import com.hworld.base.vo.PlanVO;
import com.hworld.base.vo.TelephoneVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/plan/*")
public class PlanController {
	
	@Autowired
	private PlanService planService;
	@Autowired
	private PlanDAO planDAO;
	@Autowired
	private DirectService directService;
	@Autowired
	private DirectDAO directDAO;
	
	
	// 요금제 리스트
	@GetMapping("planList")
	public ModelAndView getList(HttpSession session) throws Exception{
		ModelAndView mv= new ModelAndView();
		List<PlanVO> existPlanList = planService.getExistPlanList();
		List<PlanVO> planList = planService.getPlanList();
		List<PlanVO> gList = new ArrayList<>();
		List<PlanVO> sList = new ArrayList<>();
		List<PlanVO> tList = new ArrayList<>();
		List<PlanVO> zList = new ArrayList<>();
		List<PlanVO> wList = new ArrayList<>();
		List<PlanVO> hList = new ArrayList<>();
		List<ExtraPlanVO> ePlanList = planService.getExtraPlanList(); 
	
	
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
	   
//		
		mv.addObject("gList", gList);
		mv.addObject("sList", sList);
		mv.addObject("tList", tList);
		mv.addObject("zList", zList);
		mv.addObject("wList", wList);
		mv.addObject("hList", hList);
		mv.addObject("planList",existPlanList);
		
		mv.addObject("ePlan", ePlanList);
		mv.setViewName("hworld/planList");
		return mv;
	}
	//요금제 상세페이지
	@GetMapping("planDetail")
	public ModelAndView getDetail(PlanVO planVO, HttpSession session, BillVO billVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		PlanVO plan = planService.getDetail(planVO); //페이지에 필요한 요금제 정보
		PlanVO note = planService.getNoteName(planVO);// 페이지 요금제 공통코드에 있는 NOTE 명 
		
		List<PlanVO> recommend = planService.recommendPlan(planVO); // 추천상품 
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		log.error("{}<==============welfare",memberVO.getWelfare());
		
		PlanVO phoneNum = directService.getKingPhoneNum(memberVO.getMemberNum());
		session.setAttribute("serialNum", phoneNum != null ? phoneNum.getSerialNum() : null);
		
		if(memberVO ==null) {
			mv.setViewName("hworld/login");
			
			return mv;
		}else {
		//이전 요금제 정보 가져오기
		Integer memberNum = memberVO.getMemberNum();	
		Integer result = planDAO.getPlanG(memberNum);
		
		log.error("{}<==============result 복지 가능하냐 ",result);
		if(result ==null) {
			result=-1;
		}
		PlanVO bfPlan = planService.getBeforePlan(memberNum);
		
		if(bfPlan!=null && bfPlan.getSerialNum()!=null) {
		billVO.setSerialNum(bfPlan.getSerialNum());
		
		billVO.setPlanNum(planVO.getPlanNum());
		
		planService.getCheckPlanChange(billVO);

		
		int changeOk=billVO.getResult();
		
		
		mv.addObject("ok", changeOk);
		
		}

		mv.addObject("bfPlan", bfPlan);
		
		mv.addObject("planNote", note);
        mv.addObject("planVO", plan);
        mv.addObject("recommend", recommend);
        mv.addObject("result",result);
        
        mv.setViewName("hworld/planDetail");
		
		}
		return mv;
	}
	//요금제 추가 및 수정 시 필요한 공통코드 테이블 데이터 
	@ResponseBody
	@PostMapping("getCommonCode")
	public List<BaseVO> getCommonCode(String type) throws Exception {
	    BaseVO baseVO = new BaseVO();
	    baseVO.setType(type);
	    return planService.getCommonCode(baseVO);
	  }
	// 요금제 추가 
	@GetMapping("planAdd")
	public ModelAndView setPlanAdd(PlanVO planVO, BaseVO baseVO, ModelAndView mv) throws Exception{
	
		mv.setViewName("hworld/planAdd");
		return mv;
	}
	
	@PostMapping("planAdd")
	public ModelAndView setPlanAdd(PlanVO planVO, BaseVO baseVO) throws Exception{
		ModelAndView mv= new ModelAndView();
		int common = planService.setCommonCode(baseVO);
		int result = planService.setInsert(planVO);
		
		
		mv.setViewName("redirect:./planList");
		return mv;
	}

	// 요금제 변경 본인인증 
	@PostMapping("identify")
	public ModelAndView getIdentify(@RequestParam("planNum") String planNum, MemberVO memberVO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = planService.getIdentify(memberVO, session);
		
		PlanVO planVO = new PlanVO();
		planVO.setPlanNum(planNum);		
		planVO=planService.getDetail(planVO);
		
		if(result==1) {
			String message="확인이 완료되었습니다.";
			mv.addObject("url","./planChange");
			mv.addObject("result", message);
			
			session.setAttribute("planVO", planVO);
		}else {
			String message="일치하는 정보가 없습니다. 다시 확인하고 입력해주세요.";
			mv.addObject("url", "./planDetail?planNum="+planNum);
			mv.addObject("result", message);
		}

			mv.setViewName("common/result");
		return mv;
	}
	
	// 요금제 디테일 > 요금제 변경 확인
	@GetMapping("planChange")
	public ModelAndView getBeforPlan(Integer memberNum, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO sessionMember = (MemberVO)session.getAttribute("memberVO");
		memberNum = sessionMember.getMemberNum();
		
		PlanVO bfPlan = planService.getBeforePlan(memberNum);
		PlanVO planVO = (PlanVO) session.getAttribute("planVO");
		
		mv.addObject("bfPlan", bfPlan);
		mv.addObject("planVO", planVO);
		mv.setViewName("hworld/planChange");

		return mv;
	}
	// 요금제 변경 완료 
	@PostMapping("planChange")
	@Transactional
	public ModelAndView setPlanChange(BillVO billVO,HttpSession session, Integer memberNum) throws Exception{
		ModelAndView mv = new ModelAndView();

		MemberVO sessionMember = (MemberVO)session.getAttribute("memberVO");
		memberNum = sessionMember.getMemberNum();
		PlanVO planVO = (PlanVO) session.getAttribute("planVO");
		PlanVO phoneNum = planService.getBeforePlan(memberNum);
		
		billVO.setPlanNum(planVO.getPlanNum());
		billVO.setSerialNum(phoneNum.getSerialNum());
		
		
		int result = planService.setPlanChange(billVO);
		int results = planDAO.setInsertCancelFee(billVO);

		log.error("{}<=============nowDate",billVO.getNowDate());
		log.error("{}<===========serialNum",billVO.getSerialNum());
		log.error("{}<===========planNum",billVO.getPlanNum());
		log.error("{}<========cancelPrice",billVO.getCancelPrice());
		
		mv.addObject("phoneNum", phoneNum);
		mv.addObject("planVO", planVO);
		mv.setViewName("hworld/planResult");
		
		// 세션에서 선택한 요금제 데이터 삭제
	    session.removeAttribute("planVO");

		return mv;
	}
	
	//위약금 조회
	@ResponseBody
	@GetMapping("checkCancelFee")
	public Map<String, Object> getCheckCancelFee(@RequestParam Map<String, Object> params, HttpSession session) throws Exception{
		
		params.put("serialNum", Integer.parseInt((String)params.get("serialNum")));
		params.put("requestCode", Integer.parseInt((String)params.get("requestCode")));
		
		String nowDateStr = (String) params.get("nowDate");
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        params.put("nowDate", sdf.parse(nowDateStr));

		planService.getCheckCancelFee(params);

		return params;
	}

	//타통신사 조회
	@ResponseBody
	@PostMapping("otherTelecom")
	public boolean isOtherTelecom(@RequestBody Map<String, String> requestData) throws Exception{
		String taPhoneNum = requestData.get("taPhoneNum");
	    String telecomName = requestData.get("telecomName");
		return planService.isOtherTelecom(taPhoneNum, telecomName);
	}
	
	//번호이동 시 신규가입되는 형식
	@Transactional
	@ResponseBody
	@PostMapping("formAdd")
	public Map<String, Object> setFormAdd (@RequestBody ApplicationVO applicationVO, BindingResult bindingResult, HttpSession session) throws Exception{
		Map<String, Object> response = new HashMap<>();
		applicationVO = applicationVO.getApplicationVO();
	    String taPhoneNum = applicationVO.getPhoneNum();
	    String planNum = applicationVO.getPlanNum();

	    if (bindingResult.hasErrors()) {
	        log.info("========== 에러가 발생함 ==========");
	        response.put("success", false);
	        response.put("message", "에러가 발생했습니다.");
	        return response;
	    }

	    session.setAttribute("joinType", 1);
		//에러가 없는경우 insert 작업
		int result = directService.setFormAdd(applicationVO, session);
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		Integer memberNum = memberVO.getMemberNum();
		int ownResult = directService.setOwnCheck(memberNum);
		
		
		// 번호 삭제 호출 & taPhoneNum이 존재하는 경우 directName 및 directCode 가 존재하지 않음 -> telecomName과 번호이동이라는 표시로 대체 
	    if (!taPhoneNum.isEmpty()) {
	        int removeResult = directDAO.removeTaPhone(taPhoneNum);
	        
	    }
	    
	    response.put("success", true);
	    response.put("message", "가입이 성공적으로 처리되었습니다.");
	    return response;
	}
	//번호이동 결과 페이지
	@GetMapping("planResult2")
	public ModelAndView getChangeTelecomResult(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		Integer memberNum = memberVO.getMemberNum();
		
		PlanVO planVO = planDAO.getChangeTelecomResult(memberNum);
		
		mv.addObject("plan",planVO);
		mv.setViewName("hworld/planResult2");
		return mv;
	}
	
	// 요금제 수정
	@GetMapping("planUpdate")
	public ModelAndView setPlanUpdate(PlanVO planVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		PlanVO plan = planService.getDetail(planVO);
		mv.addObject("plan",plan);
		mv.setViewName("hworld/planUpdate");
		return mv;
	}
	
	@PostMapping("planUpdate")
	@Transactional
	public ModelAndView setPlanUpdate(PlanVO planVO, BaseVO baseVO, @RequestParam("newPlanNum") String newPlanNum, @RequestParam("oldPlanNum") String oldPlanNum) throws Exception {
	
	    // 변경할 planNum과 기존의 planNum을 Map에 담기
	    Map<String, Object> map = new HashMap<>();
	    map.put("newPlanNum", newPlanNum);
	    map.put("oldPlanNum", oldPlanNum);

	    // planNum 변경
	    if (!newPlanNum.equals(oldPlanNum)) {
	        int planNumResult = planDAO.updatePlanNum(map);
	    }
	    // 나머지 정보 업데이트
	    String oldType = oldPlanNum.substring(0, 1); 
	    String oldCode = oldPlanNum.substring(1, 3); 
	    
	    int delCommon = planDAO.setDeleteCommon(oldType, oldCode);
	    int result = planService.setPlanUpdate(planVO);
	    int newCommon = planService.setCommonCode(baseVO);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("redirect:/plan/planDetail?planNum=" + newPlanNum); // 변경된 planNum으로 이동
	    return mv;
	}

	
	//요금제 비활성화 - 관리자는 리스트나 디테일 확인 가능 / 소비자는 확인 불가능
	@PostMapping("planDisabled")
	public ModelAndView setPlanDisabled(PlanVO planVO, ExtraPlanVO extraPlanVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		if (planVO != null) {
            // planVO 값이 있을 때
            int resultPlan = planDAO.setPlanDisabled(planVO);
        }

        if (extraPlanVO != null) {
            // extraPlanVO 값이 있을 때
            int resultExtraPlan = planDAO.setExtraPlanDisabled(extraPlanVO);
        }
        mv.setViewName("redirect:./planList");
		return mv;
	}
	
	// 부가서비스 디테일
	@GetMapping("ePlanDetail")
	public ModelAndView getDetailExtraPlan(@RequestParam("extraPlanNum") String extraPlanNum, ExtraPlanVO extraPlanVO, Map<String, Object> map, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		ExtraPlanVO eplanVO = planService.getDetailExtraPlan(extraPlanVO);
		
		//세션에서 멤버넘 받아서 시리얼넘, 가져오기
		MemberVO sessionMember = (MemberVO)session.getAttribute("memberVO");
		PlanVO planVO = new PlanVO();
		Integer memberNum = sessionMember.getMemberNum();
		planVO =planService.getBeforePlan(memberNum);
		

		if (planVO == null || planVO.getSerialNum() == null) {
	        // serialNum이 없는 경우, 클라이언트에게 메시지를 보냅니다.
			String message="휴대폰 개통 및 회선 등록 후 가입 가능합니다.";
			
			mv.addObject("url", "/direct/phoneList"); 
		    mv.addObject("result", message);
	        mv.setViewName("common/result");
	        return mv;
	    }
		

		map.put("serialNum", planVO.getSerialNum());
		map.put("extraPlanNum", extraPlanNum);
		map.put("memberNum", memberNum);


		log.error("{}<===============map ",map.get("serialNum"));
		log.error("{}<===============map ",map.get("memberNum"));
		log.error("{}<===============map ",map.get("extraPlanNum"));
		
		
		map = planService.searchExtraPlan(map);

		log.error("{}<===========", map);

		mv.addObject("map",map);
		mv.addObject("eplan", eplanVO);
		mv.addObject("bfPlan",planVO);
		mv.setViewName("hworld/ePlanDetail");
		
			
		
		return mv;
	}
		
	
	// 부가서비스 디테일 > 신청하기
	@PostMapping("ePlanApply")
	public ModelAndView setAddServ(@RequestParam Map<String, Object> map, HttpSession session, @RequestParam("extraPlanNum") String extraPlanNum, @RequestParam("serialNum") String serialNum, @RequestParam("extraPlanName") String extraPlanName) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberVO sessionMember = (MemberVO)session.getAttribute("memberVO");
		Integer memberNum = sessionMember.getMemberNum();
		PlanVO planVO =planService.getBeforePlan(memberNum);
		
		map.put("serialNum", planVO.getSerialNum());
		map.put("extraPlanNum", extraPlanNum);
		map.put("extraPlanName", extraPlanName);
		//map.put("memberNum", sessionMember);
		
		
		int result=planService.setAddServ(map);
		
		
		mv.addObject("result",result);
		mv.addObject("bfPlan",planVO);
		mv.addObject("map", map);
		mv.setViewName("hworld/extraResult");
		return mv;
	}
	
	// 부가서비스 추가
	@GetMapping("ePlanAdd")
	public ModelAndView setExtraPlanInsert(ExtraPlanVO extraPlanVO, BaseVO baseVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hworld/ePlanAdd2");
		return mv;
	}
	@PostMapping("ePlanAdd")
	public ModelAndView setExtraPlanInsert(ExtraPlanVO extraPlanVO, ModelAndView mv, BaseVO baseVO) throws Exception{
		int common = planService.setCommonCode(baseVO);
		int result = planService.setExtraPlanInsert(extraPlanVO);

		mv.setViewName("redirect:./planList");
		return mv;
	}

	
	@GetMapping("ePlanUpdate")
	public ModelAndView setExtraPlanUpdate(ExtraPlanVO extraPlanVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		ExtraPlanVO extraPlan = planService.getDetailExtraPlan(extraPlanVO);
		mv.addObject("extraPlan", extraPlan);
		mv.setViewName("hworld/ePlanUpdate");
		return mv;
	}
	
	@PostMapping("ePlanUpdate")
	public ModelAndView setExtraPlanUpdate(ExtraPlanVO extraPlanVO, BaseVO baseVO, ModelAndView mv) throws Exception {
		int result = planService.setExtraPlanUpdate(extraPlanVO);
		int common = planDAO.setUpdateCommon(baseVO);
		
	    mv.setViewName("redirect:/plan/ePlanDetail?extraPlanNum="+extraPlanVO.getExtraPlanNum());
		return mv;
	}

	
	
}
