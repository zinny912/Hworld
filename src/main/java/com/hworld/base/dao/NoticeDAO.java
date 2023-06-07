package com.hworld.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hworld.base.util.Pager;
import com.hworld.base.vo.BoardVO;
import com.hworld.base.vo.NoticeVO;
import com.hworld.base.vo.QnaVO;

@Mapper
public interface NoticeDAO {
	
    // Q&A 갯수
    public Long getTotalCount(Pager pager) throws Exception;
    
    // Q&A 리스트 조회
    public List<BoardVO> getList(Pager pager) throws Exception;

    // Q&A 상세 조회
    public BoardVO getDetail(BoardVO boardVO) throws Exception;

    // Q&A 등록
    public int setInsert(BoardVO boardVO) throws Exception;

    // Q&A 수정
    public int setUpdate(BoardVO boardVO) throws Exception;

    // Q&A 삭제
    public int setDelete(BoardVO boardVO) throws Exception;
}
