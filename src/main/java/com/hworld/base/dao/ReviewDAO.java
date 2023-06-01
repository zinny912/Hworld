package com.hworld.base.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.ReviewVO;

@Mapper
public interface ReviewDAO {
	
    // 리뷰 갯수
    public Long getTotalCount(Pager pager) throws Exception;

    // 리뷰 리스트 조회
    public List<ReviewVO> getList(Pager pager) throws Exception;

    // 리뷰 하나 조회
    public ReviewVO getDetail(ReviewVO reviewVO) throws Exception;

    // 리뷰 등록
    public int setInsert(ReviewVO reviewVO) throws Exception;

    // 리뷰 수정
    public int setUpdate(ReviewVO reviewVO) throws Exception;

    // 리뷰 삭제
    public int setDelete(ReviewVO reviewVO) throws Exception;
}
