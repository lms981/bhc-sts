package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import com.mybhc.vo.BhcNoticeVO;


public interface NoticeService {
	int getTotalCount();	//공지사항 전체 로우수
	ArrayList<BhcNoticeVO> getList(int startCount, int endCount);  //공지사항 전체 리스트
	int getWriteResult(BhcNoticeVO vo);		//공지사항 글쓰기 처리
	BhcNoticeVO getContent(String nid);	//공지사항 상세보기
	void getUpdateHits(String nid);     //공지사항 조회수 업데이트
	int getUpdate(BhcNoticeVO vo);		//공지사항 수정 처리
	int getDelete(String nid);		//공지사항 삭제 처리 
	List<BhcNoticeVO> getSearchList(BhcNoticeVO vo) throws Exception;
}
