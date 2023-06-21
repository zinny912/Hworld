package com.hworld.base.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hworld.base.dao.ApplicationDAO;
import com.hworld.base.util.SHA256Util;
import com.hworld.base.vo.ApplicationVO;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.MemberVO;
import com.hworld.base.vo.PlanVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class ApplicationService {
	
	@Autowired
	private ApplicationDAO applicationDAO;
	
	
	//신청서 db에 insert
	public int setFormAdd(ApplicationVO applicationVO) throws Exception{
		//작업 순서
		//1.신청서 DB에 INSERT
		//2.신청서에 적힌 주민번호가 일치하는 회원이 있는지 검색
		//3-1a.일치하는 회원이 없으면 회원번호 생성
		//3-1b.생성된 회원번호 + 신청서에 입력된 정보를 기반으로 회원VO insert(ID/PW NULL) -> 3-2로 진행
		//3-2a.일치하는 회원이 있으면 회원번호 받아오기
		//3-2b.받아온 회원번호로 회선VO insert
		
		
		//1.최초 신청서 db에 insert
		//평문 주민뒷자리를 rrnlOrigin에 저장 -> 나중에 실제로 사용할땐 지우면 됨
		applicationVO.setRrnlOrigin(applicationVO.getRrnl());
		
		//SHA256Util을 이용해서 RRNL 암호화(RRN 값 기반)
		String RRN = applicationVO.getRrnf()+"-"+applicationVO.getRrnl();
		applicationVO.setRrnl(SHA256Util.encryptMD5(RRN));
		
		//신청서 db에 insert
		int result = applicationDAO.setFormAdd(applicationVO);
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>> appNum: {} ", applicationVO.getAppNum());
		
		//고려할점) 방금 auto_increment로 생성한 appNum을 어케 알지?
		//useGenerateKeys, keyProperty 사용하기
		
		//2.신청서에 적힌 주민번호가 일치하는 회원이 있으면 회원번호를 받아옴 -> 일치하는 정보가 있으면 3-2a부터 진행
		//회원번호 조회에 성공하면 MemberVO가 null이 아님. 들어있지 않으면 null
		MemberVO memberVO = applicationDAO.getMemberSearch(applicationVO);
		
		boolean check = false;
		if(memberVO!=null) {
			check=true;
		}
		
		log.info(">>>>>>>>>>>>>>>>>>>>>>>>>> 일치여부: {} ", check);
		
		//고려할점) 주민번호는 똑같은데 이름이 다른 경우 어떻게 처리?
		
		//3-1a.회원번호 정보가 없음.
		if(memberVO == null) {
			//회원번호 생성 + 신청서 정보 기반으로 회원생성
			result = applicationDAO.setMemberInitAdd(applicationVO);
			//생성한 회원번호 불러오기
			memberVO = applicationDAO.getMemberSearch(applicationVO);
		}
		//여기까지 memberVO에 회원번호가 들어있음. 이걸 applicationVO에 집어넣음
		applicationVO.setMemberNum(memberVO.getMemberNum());
		
		//3-2a.회원번호가 있음
		//3-2b.회원번호(신청서VO)로 회선VO 만들기
		//프로시저 호출해서 회선VO INSERT
		Map<String, Integer> telephone = new HashMap<>();
		telephone.put("appNum", applicationVO.getAppNum());
		telephone.put("memberNum", applicationVO.getMemberNum());
		log.info(" :::::::::::::::::::::::: {} ", telephone.get("appNum"));
		log.info(" :::::::::::::::::::::::: {} ", telephone.get("memberNum"));
		
		result = applicationDAO.setTelephoneInitAdd(telephone);
		
		log.info(" :::::::::::::::::::::::: {} ", result);
		
		return result;
	}
	
	
	//getExistPlanList
	public List<PlanVO> getExistPlanList() throws Exception{
		return applicationDAO.getExistPlanList();
	}
	
	//getPlanList
	public List<PlanVO> getPlanList() throws Exception{
		return applicationDAO.getPlanList();
	}
	
	//getDirectList
	public List<DirectVO> getDirectList() throws Exception{
		return applicationDAO.getDirectList();
	}
	
	//getSelectedDirectList
	public List<DirectVO> getSelectedDirectList(DirectVO directVO) throws Exception{
		return applicationDAO.getSelectedDirectList(directVO);
	}
	
	//getMonthlyPay
	public Map<?, ?> getMonthlyPay(Map<String, Object> monthlyPay) throws Exception{
		return applicationDAO.getMonthlyPay(monthlyPay);
	}
	
	//isDuplicatePhoneNum
	public boolean isDuplicatePhoneNum(String phoneNum) throws Exception{
		boolean check = false;
		
		String result = applicationDAO.isDuplicatePhoneNum(phoneNum);
		if(result != null) {
			check = true;
		}
		log.info(" :::::::::::::::::::: service check value : {} ", check);
		return check;
	}
}
