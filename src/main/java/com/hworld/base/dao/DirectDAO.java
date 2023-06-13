package com.hworld.base.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.DirectVO;
import com.hworld.base.vo.PlanVO;
import com.hworld.base.vo.QnaVO;
import com.hworld.base.vo.ReviewVO;


@Mapper
public interface DirectDAO {
		
	//상품 수
	public Long getTotalCount(Pager pager) throws Exception;
	
	//상품 리스트 조회 
	public List<DirectVO> getList(Pager pager) throws Exception;
	
	//상품 하나 옵션 다수 조회
	public List<DirectVO> getDetail(String slicedCode) throws Exception;

	//상품파일 조회 
	public DirectVO getFileDetail(DirectVO directVO) throws Exception;
	
	//생성된 제품코드로 가격, 재고 조회해오기 
	public DirectVO getPrice(String directCode) throws Exception;

	//상품 추가  
	public int setInsert(DirectVO directVO) throws Exception;
	
	//파일 추가 
	public int setFileInsert(DirectVO directVO) throws Exception;

	//상품 수정 
	public int setUpdate(DirectVO directVO) throws Exception;
	
	//상품 삭제
	public int setDelete(String slicedCode) throws Exception;
	
	//파일 삭제 
	public int setFileDelete (DirectVO directVO) throws Exception;
	
	//리뷰 불러오기
	public List<ReviewVO> getReview(String slicedCode) throws Exception;	
	
	//리뷰 총 개수 가져오기
	public  Long getReviewCount(DirectVO directVO) throws Exception;
	
	//리뷰작성
	public int setReviewAdd(ReviewVO reviewVO) throws Exception;
	
	//리뷰수정
	public int setReviewUpdate(ReviewVO reviewVO) throws Exception;
	
	//리뷰삭제
	public int setReviewDelete(ReviewVO reviewVO) throws Exception;
	
	//상품문의
	public List<QnaVO> getDirectQna(QnaVO qnaVO) throws Exception;
	
	//상품문의 작성
	public int setQnaAdd(QnaVO qnaVO) throws Exception;
	
	//상품문의 답글 작성
	public int setReplyAdd(QnaVO qnaVO) throws Exception;
	
	//존재하는 plan 타입 가져오기
	public List<PlanVO> getExistPlanList() throws Exception;
	
	//plan list 가져오기
	public List<PlanVO> getPlanList() throws Exception;
	
	//plan 선택된거 가져오기
	public PlanVO getSelectedPlan(PlanVO planVO) throws Exception;
	
}
